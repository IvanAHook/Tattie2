using UnityEngine;
using System.Collections;

public class Fire : MonoBehaviour {

    public Sprite messageSprite;

    void AbilityInteract(Transform t) {
        if (t.tag == "AbilityWater") {
            Destroy(gameObject);
        } else {
            GameObject.Find("MessageHandler").GetComponentInChildren<MessageHandler>().AddMessage(GameObject.Find("Player").transform, new Vector3(0f, 4f, 0f) , messageSprite, 4f);
        }
    }

}
