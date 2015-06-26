using UnityEngine;
using System.Collections;

public class Returning : MonoBehaviour {

    public Transform[] blobs;
    public bool rescueDone;

    void Update() {
        if (rescueDone) {
            foreach (Transform blob in blobs) {
                blob.gameObject.SetActive(true);
            }
            rescueDone = false;
        }
    }

}
