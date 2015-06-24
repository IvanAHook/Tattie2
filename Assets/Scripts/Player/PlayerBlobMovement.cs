using UnityEngine;
using System.Collections;
using DG.Tweening;
using UnityEngine.EventSystems;

[RequireComponent(typeof(AudioSource))]
public class PlayerBlobMovement : MonoBehaviour {

    NavMeshAgent agent;

    AudioSource audioSource;

    AudioClip[] footsteps;
    public AudioClip[] footstepsGrass;
    public AudioClip[] footstepsWood;
    public AudioClip[] footstepsWater;
    public AudioClip[] footstepsDirt;
    public float footDelay;

    public bool active = false;
    public bool friendly = false;

    public bool isMoving;

    public float speed = 100f;

    public Transform player;

    bool interract;

    Transform interractTarget;

    bool aquired;
    bool wait = false;

    void Start() {

        agent = GetComponent<NavMeshAgent>();

        audioSource = transform.GetComponent<AudioSource>();
        footsteps = footstepsGrass;
        StartCoroutine(Footsteps());
    }

    void Update() {

        if (!active && player.GetComponent<PlayerMovement>().isMoving) {
            SetDestination(player.position - player.forward);
        }

        //Debug.Log(agent.velocity.magnitude);
        if (agent.velocity.magnitude > 1.5f) {
            if (!isMoving) {
                isMoving = true;
            }
        } else {
            if (isMoving) {
                isMoving = false;
            }
        }

        if (interract && interractTarget) {
            if (Vector3.Distance(transform.position, agent.destination) < 2f) {
                interractTarget.GetComponent<Interactable>().Interact();
                interract = false;
                Halt();
            }
        }

    }

    public void SetDestination(Vector3 destination) {
        NavMeshPath path = new NavMeshPath();
        agent.CalculatePath(destination, path);
        if (path.status == NavMeshPathStatus.PathComplete && (!wait || active)) {
            agent.SetPath(path);
        } else {
            Halt();
        }
    }

    public void Halt() {
        agent.ResetPath();
    }

    public void TargetHit(Transform t) {
        if (t.tag == "Interactable") {
            interract = true;
            interractTarget = t;
            t.SendMessage("PlayAnim", SendMessageOptions.DontRequireReceiver);
            if (t.GetComponent<Interactable>()) {
                SetDestination(t.GetComponent<Interactable>().interactTransform.position);
            }
            //agent.destination = t.GetComponent<Interactable>().interactTransform.position;
            return;
        }
        interract = false;
    }

    public void SetIsAquired(bool aquired) {
        this.aquired = aquired;
    }

    public bool IsAquired() {
        return aquired;
    }

    IEnumerator Footsteps() {
        while (true) {
            if (isMoving) {
                RaycastHit hitInfo;
                Physics.Raycast(transform.position, Vector3.down, out hitInfo);

                if (hitInfo.transform != null) {
                    if (hitInfo.transform.tag == "Grass") {
                        footsteps = footstepsGrass;
                    } else if (hitInfo.transform.tag == "Wood_Floor") {
                        footsteps = footstepsWood;
                    } else if (hitInfo.transform.tag == "Water") {
                        footsteps = footstepsWater;
                    } else if (hitInfo.transform.tag == "Dirt") {
                        footsteps = footstepsDirt;
                    }
                }

                audioSource.PlayOneShot(footsteps[Random.Range(0, footsteps.Length)]);
                yield return new WaitForSeconds(footDelay);
            } else {
                yield return 0;
            }
        }
    }

    public bool Wait(bool wait) {
        return this.wait = wait;
    }

}
