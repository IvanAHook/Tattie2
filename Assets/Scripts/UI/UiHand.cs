using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;

public class UiHand : MonoBehaviour {

    public delegate void MouseExit();
    public static MouseExit mouseExit;

    public delegate void MouseEnter();
    public static MouseEnter mouseEnter;


    public Transform player;
    public List<Transform> heldItems;

    float hideDelay = 5f;
    float hideTimer = 0f;

    bool didHoverLastFrame;

    public GameObject defaultItemPrefab;

    void Update() {

        if (didHoverLastFrame && !ContainsMouse() && mouseExit != null) {
            mouseExit();
            didHoverLastFrame = false;
        } else if (!didHoverLastFrame && ContainsMouse() && mouseEnter != null) {
            mouseEnter();
            didHoverLastFrame = true;
        }

        hideTimer += Time.deltaTime;
        if (hideTimer >= hideDelay) {
            transform.DOMoveY(-76f, 0.5f);
            //transform.position = new Vector3(0f, -76f, 0f);
        }
    }

    public void PickupItem(Transform item) {
        Debug.Log(item.GetComponent<Pickup>().sprite.name);
        if (item.GetComponent<Pickup>()) {
            Transform newItem = ((GameObject)Instantiate(defaultItemPrefab, Vector3.zero, Quaternion.identity)).transform;
            newItem.GetComponent<UiItem>().sprite = item.GetComponent<Pickup>().sprite;
            newItem.GetComponent<UiItem>().worldItem = item.GetComponent<Pickup>().worldItem;
            newItem.GetComponent<UiItem>().worldItem.position = player.position;
            newItem.GetComponent<UiItem>().worldItem.gameObject.layer = 11;
            foreach (Transform i in newItem.GetComponent<UiItem>().worldItem.GetComponentsInChildren<Transform>()) {
                i.gameObject.layer = 11; 
        	}
            newItem.SetParent(transform);

            heldItems.Add(newItem);

            item.gameObject.SetActive(false);
        }
    }

    bool ContainsMouse() {
        return GetComponent<RectTransform>().rect.Contains(Input.mousePosition);
    }

    //public void DropHeldItem() {
    //    if (heldItem && heldItem.GetComponent<UiItem>()) {
    //        heldItem.GetComponent<UiItem>().Drop(player.transform.position);
    //        Destroy(heldItem.gameObject);
    //    }
    //}

    public void Show() {
        hideTimer = 0f;
        transform.DOMoveY(0f, 0.5f);
    }

}
