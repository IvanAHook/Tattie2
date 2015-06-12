using UnityEngine;
using System.Collections;

public class Actor : MonoBehaviour {

    public Transform item;
    
    public Transform interactTransform; // come up with a better name...

    public Vector3 messageOffset;
    public float messageDuration;
    public Sprite messageSprite;
    public UiPopupMessage message;

    public void Interact() {
        message.NewMessage(transform, messageOffset, messageSprite, messageDuration);
        //GameObject.Find("MessageHandler").GetComponentInChildren<MessageHandler>().AddMessage(transform, new Vector3(0f, 2f, 1f), messageSprite, 4f);
    }

	void ItemInteract(Transform t){

	}

    public Vector3 GetInteractPosition() {
        return interactTransform.position; 
    }

}
