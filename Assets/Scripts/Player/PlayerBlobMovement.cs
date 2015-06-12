using UnityEngine;
using System.Collections;
using DG.Tweening;
using UnityEngine.EventSystems;

public class PlayerBlobMovement : MonoBehaviour {

    NavMeshAgent agent;

    AudioSource audioSource;

    public AudioClip[] footsteps;
    public float footDelay;

    public bool active = false;

    public bool isMoving;

    public float speed = 100f;

    public Transform player;

    bool interract;

    Transform interractTarget;

    bool aquired;

    void Start() {

        agent = GetComponent<NavMeshAgent>();

        audioSource = transform.GetComponent<AudioSource>();
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
            Debug.Log("interractTarget");
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
        if (path.status == NavMeshPathStatus.PathComplete) {
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
            Debug.Log("TargetHit");
            interract = true;
            interractTarget = t;
            t.SendMessage("PlayAnim", SendMessageOptions.DontRequireReceiver);
            SetDestination(t.GetComponent<Interactable>().interactTransform.position);
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
                audioSource.PlayOneShot(footsteps[Random.Range(0, footsteps.Length)]);
                yield return new WaitForSeconds(footDelay);
            } else {
                yield return 0;
            }
        }
    }

}
