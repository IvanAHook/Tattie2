using UnityEngine;
using System.Collections;

public class SpiderwebFirefly : Interactable {

    bool active;

    void Start() {
        active = false;
    }

    public override void Interact(Transform item) {
        if (item.GetComponent<UiItem>().worldItem == interractItem && active) {
            GetComponent<MeshRenderer>().enabled = false;
            Transform hand = FindObjectOfType<PlayerMovement>().hand;
            hand.GetComponent<UiHand>().Show();
            hand.GetComponent<UiHand>().PickupItem(transform);
            Destroy(item.gameObject);
        }
    }

    public void Activate() {
        active = true;
    }

}
