using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MessageHandler : MonoBehaviour {

    public GameObject uiPopupMessage;
    List<GameObject> messages;

	void Start () {

        messages = new List<GameObject>();
	
	}
	
	void Update () {
	
	}

    public void AddMessage(Transform target, Vector3 offset, Sprite sprite, float duration) {
        foreach (GameObject message in messages) {
            if (message.GetComponent<UiPopupMessage>().GetTarget() == target) {
                message.GetComponent<UiPopupMessage>().NewMessage(target, offset, sprite, duration);
                return;
            }
        }

        GameObject m = (GameObject)Instantiate(uiPopupMessage, target.position, Quaternion.identity);
        m.GetComponent<UiPopupMessage>().NewMessage(target, offset, sprite, duration);

        messages.Add(m);
    }

}
