using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class UiAbility : MonoBehaviour/*, IBeginDragHandler, IDragHandler, IEndDragHandler */{

    /*static Plane XZPlane = new Plane(Vector3.up, Vector3.zero);

    public GameObject worldItem;
    public Sprite sprite;

    public Transform interactsWith;

    Transform originalParent;
    Camera cam;

    public Transform spawnItemParent;
    Transform target;

    void Start() {

        cam = Camera.main;
        GetComponent<Image>().sprite = sprite;

    }

    void Update() {
        if (target && Vector3.Distance(GameObject.Find("Player").transform.position, target.position) <= 2f) {
            target.transform.SendMessage("ItemInteract", transform, SendMessageOptions.DontRequireReceiver);
            target.transform.SendMessage("AbilityInteract", transform, SendMessageOptions.DontRequireReceiver);
            GameObject.Find("Player").GetComponent<PlayerMovement>().Halt();
        }
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
            GetComponent<Image>().sprite = sprite;
            return;
        }

    }

    public void OnEndDrag(PointerEventData eventData) {

        RaycastHit hitInfo;

        transform.GetComponent<RectTransform>().localScale = new Vector3(1f, 1f, 1f);
        transform.SetParent(originalParent);

        // Dont continue if raycast does not hit anything!
        if (!Physics.Raycast(cam.ScreenPointToRay(Input.mousePosition), out hitInfo)) {
            GetComponent<Image>().sprite = sprite;
            return;
        }

        if (hitInfo.transform.tag == "Intractable") {
            target = hitInfo.transform;
            //GameObject.Find("Player").GetComponent<PlayerMovement>().GetNewPath(target.position);
        }

    }

    Vector3 GetMousePositionOnXY() {
        float distance;
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (XZPlane.Raycast(ray, out distance)) {
            Vector3 hitPoint = ray.GetPoint(distance);
            hitPoint.y = 1f;
            return hitPoint;
        }
        return Vector3.zero;
    }*/

}
