using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class PlayerMovement : MonoBehaviour {

    public NavMeshAgent agent;

    AudioSource audioSource;

    public AudioClip[] footsteps;
    public float footDelay;

	private int moveSpeedHash;
    public bool isMoving;
	float blendSpeed;
	Animator anim;

    public bool active = true;

    public float speed = 100f;
    bool pickup;
    bool interract;

    Transform interractTarget;

    public Transform inventoryItem;

    public Transform hand;

    Camera cam;

    void Start() {
		moveSpeedHash = Animator.StringToHash ("Speed");

        cam = Camera.main;

        agent = GetComponent<NavMeshAgent>();

		anim = GetComponentInChildren<Animator> ();

        audioSource = transform.GetComponent<AudioSource>();
        StartCoroutine(Footsteps());
    }

    void Update() {

        Shader.SetGlobalVector("_PlayerPos", transform.position);
        if (agent.velocity.magnitude > 1.5f) {
            if (!isMoving) {
                isMoving = true;
            }
        } else {
            if (isMoving) {
                isMoving = false;
            }
        }

        if (active) {
            UpdateInput();
        }

        if (interract && interractTarget) {
            if (Vector3.Distance(transform.position, agent.destination) < 2f) {
                interractTarget.GetComponent<Interactable>().Interact();
                interract = false;
                Halt();
            }
        }

        if (pickup && inventoryItem) {
            if (Vector3.Distance(transform.position, inventoryItem.position) < 2f) {
                PickupItem();
                Halt();
            }
        }

		blendSpeed = Mathf.Lerp (0, 1, agent.velocity.magnitude / agent.speed);
		anim.SetFloat(moveSpeedHash, blendSpeed);

    }

    void UpdateInput() {

        if (Input.GetMouseButtonDown(0)) {

            RaycastHit hitInfo;

            // Dont continue if raycast does not hit anything!
            if (!Physics.Raycast(cam.ScreenPointToRay(Input.mousePosition), out hitInfo)) {
                return;
            }

            // Dont continue if clicking on ui
            if (EventSystem.current.IsPointerOverGameObject()) {
                return;
            }

            //if (hitInfo.transform.gameObject.layer == 8 || hitInfo.transform.gameObject.layer == 10 || hitInfo.transform.gameObject.layer == 13) {
            //    TargetHit(hitInfo.transform);

            //}

        }

    }

    public void SetDestination(Vector3 target) {

        NavMeshPath path = new NavMeshPath();
        agent.CalculatePath(target, path);
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
        if (t.tag == "Pickup") {
            pickup = true;
            t.SendMessage("PlayAnim", SendMessageOptions.DontRequireReceiver);
            inventoryItem = t;
            SetDestination(t.position);
            return;
        }
        if (t.tag == "Interactable") {
            interract = true;
            interractTarget = t;
            t.SendMessage("PlayAnim", SendMessageOptions.DontRequireReceiver);
            SetDestination(t.GetComponent<Interactable>().interactTransform.position);
            //agent.destination = t.GetComponent<Interactable>().interactTransform.position;
            return;
        }
        pickup = false;
        interract = false;
    }
    
    void PickupItem() {
        hand.GetComponent<UiHand>().Show();
        hand.GetComponent<UiHand>().PickupItem(inventoryItem);
        pickup = false;
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
