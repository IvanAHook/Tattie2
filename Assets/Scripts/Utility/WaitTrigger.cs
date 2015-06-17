using UnityEngine;
using System.Collections;

public class WaitTrigger : MonoBehaviour {

    public GameObject player;
    public GameObject blob;

    void Start() {

    }

    void OnTriggerEnter(Collider other) {
        if (other.gameObject == player) {
            gameObject.SetActive(false);
        }
        if (other.gameObject == blob) {
            blob.GetComponent<PlayerBlobMovement>().Wait(true);
            if (!blob.GetComponent<PlayerBlobMovement>().active) {
                blob.GetComponent<PlayerBlobMovement>().Halt();
            }
        }
    }

    void OnTriggerExit(Collider other) {
        if (other.gameObject == blob) {
            blob.GetComponent<PlayerBlobMovement>().Wait(false);
        }
    }

    void OnDisable() {
        blob.GetComponent<PlayerBlobMovement>().Wait(false);
    }

}
