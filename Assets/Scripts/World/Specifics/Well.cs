using UnityEngine;
using System.Collections;

public class Well : Interactable {

    public Transform key;

    public override void Interact() {
        if (key && !key.gameObject.activeSelf) {
            key.gameObject.SetActive(true);
        }
    }


}
