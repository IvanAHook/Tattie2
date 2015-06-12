using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class Draggable : MonoBehaviour/*, IBeginDragHandler, IDragHandler, IEndDragHandler*/ {

    /*Transform originalParent;
    Camera cam;

    public Sprite defaultSprite;

    public Transform spawnItemParent;
    public Transform spawnItem;
    public Material placehoderMat;
    Transform placeholder;

    void Start() {

        cam = Camera.main;
        placeholder = (Transform)Instantiate(spawnItem, Vector3.zero, Quaternion.identity);
        placeholder.GetComponent<MeshRenderer>().material = placehoderMat;
        placeholder.GetComponent<MeshRenderer>().enabled = false;
        placeholder.gameObject.layer = 2; // apparently 2 is ignore raycast
        GetComponent<Image>().sprite = defaultSprite;

    }

    public void OnBeginDrag(PointerEventData eventData) {

        originalParent = transform.parent;
        transform.SetParent(transform.parent.parent);
        transform.GetComponent<RectTransform>().localScale = new Vector3(0.5f, 0.5f, 0.5f);

    }

    public void OnDrag(PointerEventData eventData) {

        transform.position = eventData.position;

        RaycastHit hitInfo;

        // Dont continue if raycast does not hit anything!
        if (!Physics.Raycast(cam.ScreenPointToRay(Input.mousePosition), out hitInfo)) {
            GetComponent<Image>().sprite = defaultSprite;
            placeholder.GetComponent<MeshRenderer>().enabled = false;
            return;
        }

        if (transform.GetComponent<UiItem>()) {
            return;
        }
        placeholder.GetComponent<MeshRenderer>().enabled = true;

        Vector3 dropPosition = hitInfo.transform.position + hitInfo.normal;

        placeholder.position = dropPosition;

    }

    public void OnEndDrag(PointerEventData eventData) {

        RaycastHit hitInfo;

        transform.GetComponent<RectTransform>().localScale = new Vector3(1f, 1f, 1f);
        transform.SetParent(originalParent);

        if (transform.GetComponent<UiItem>()) {
            return;
        }

        // Dont continue if raycast does not hit anything!
        if (!Physics.Raycast(cam.ScreenPointToRay(Input.mousePosition), out hitInfo)) {
            GetComponent<Image>().sprite = defaultSprite;
            return;
        }

        Vector3 dropPosition = hitInfo.transform.position + hitInfo.normal;

        placeholder.GetComponent<MeshRenderer>().enabled = false;

        PlaceItem(dropPosition);

    }

    void PlaceItem(Vector3 pos) {
        Transform box = (Transform)Instantiate(spawnItem, pos, Quaternion.identity);
        box.SetParent(spawnItemParent);

        if (box.position.y <= 0) {
            box.gameObject.layer = 8;
        } else {
            box.gameObject.layer = 9;
        }

    }*/

}
