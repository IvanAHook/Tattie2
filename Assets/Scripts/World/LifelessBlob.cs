using UnityEngine;
using System.Collections;
using DG.Tweening;

public class LifelessBlob : Interactable {

    public Transform player;
    public Transform target;

    private const string emissionID = "_Emission";
    private Material mat;

    void Awake() {
        mat = transform.GetComponentInChildren<SkinnedMeshRenderer>().material;
    }

    void Update() {
        //ProximityBrightness();
    }

    public override void Interact(Transform item) {
        if (item.GetComponent<UiItem>().worldItem == interractItem) {
            Destroy(item.gameObject);

            mat.DOFloat(0.6f, emissionID, 1f);

            transform.gameObject.layer = 14;
            transform.gameObject.tag = "Player";

            GetComponent<BoxCollider>().enabled = false;
            StartCoroutine("Stand");

            Destroy(target.gameObject);

            //GetComponentInChildren<PlayerBlobMovement>().SetDestination(player.position);
            //GetComponentInChildren<BlobAI>().enabled = true;
        }
    }

    IEnumerator Stand() {
        GetComponentInChildren<BlobAIPlayerBlobFall>().RunAgain();
        yield return new WaitForSeconds(1.2f);
        GetComponentInChildren<PlayerBlobMovement>().enabled = true;
        GetComponentInChildren<PlayerBlobResponse>().ShowResponse();
    }

    void ProximityBrightness() {
        if (Vector3.Distance(transform.position, interractItem.position) < 4f) {
            mat.DOFloat(0.35f, emissionID, 1f);
        } else if (Vector3.Distance(transform.position, interractItem.position) > 4f) {
            mat.DOFloat(0.25f, emissionID, 1f);
        }
    }

}
