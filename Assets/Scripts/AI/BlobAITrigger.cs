using UnityEngine;
using System.Collections;

public class BlobAITrigger : MonoBehaviour {

	public BlobAI[] blobList;
    public BlobAIPlayerBlobFall playerBlob;

	void OnTriggerStay(Collider other) {
		if (other.transform.tag == "Player") {
			foreach(BlobAI blobai in blobList){
				if (blobai != null){
					blobai.Invoke ("Trigger", Random.Range(0f, 3f));
				}
			}
            playerBlob.Invoke("Trigger", Random.Range(0f, 3f));
		}

	}
}
