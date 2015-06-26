using UnityEngine;
using System.Collections;

[RequireComponent(typeof(BoxCollider))]
public class PigTrigger : MonoBehaviour {

    public bool pigInRoom;
    bool playerInRoom;

    public PlayerGroupController pgc;
    public Transform fleeTarget;

    void OnTriggerEnter(Collider other) {
        if (other.tag == "Player") {
            playerInRoom = true;
            if (pigInRoom == true) {
                pgc.Flee(fleeTarget.position);
            }
        } else if (other.tag == "Pig") {
            pigInRoom = true;
            if (playerInRoom == true) {
                pgc.Flee(fleeTarget.position);
            }
        }
    }

    void OnTriggerExit(Collider other) {
        if (other.tag == "Player") {
            playerInRoom = false;
        } else if (other.tag == "Pig") {
            pigInRoom = false;
        }
    }

    void Update() {

    }

}
