using UnityEngine;
using System.Collections;

public class HangingBlobs : Interactable {

    public BlobAI[] blobs;
    public BoxCollider boxColl;
    public Returning returning;

    public override void Interact() {
        returning.rescueDone = true;
        foreach (BlobAI blob in blobs) {
            StartCoroutine(Stand(blob));
        }
    }

    void Update () {
    }


    IEnumerator Stand(BlobAI blob) {
        blob.FallDown();
        yield return new WaitForSeconds(1.2f);
        blob.RunAgain();
    }

}
