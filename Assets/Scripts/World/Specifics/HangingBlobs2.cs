using UnityEngine;
using System.Collections;

public class HangingBlobs2 : Interactable {

    public BlobAI[] blobs;

    public override void Interact(Transform item) {
        if (item.GetComponent<UiItem>().worldItem == interractItem) {
            foreach (BlobAI blob in blobs) {
                StartCoroutine(Stand(blob));
	        }
        }
    }

    IEnumerator Stand(BlobAI blob) {
        blob.anim.SetTrigger("playerGetUp");
        yield return new WaitForSeconds(1.2f);
        blob.RunAgain();
    }

}
