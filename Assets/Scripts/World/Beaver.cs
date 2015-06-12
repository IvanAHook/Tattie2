using UnityEngine;
using System.Collections;

public class Beaver : Actor { // make Actor.cs class and inherit shit or just stor alot of publick shit in actor

//    public Transform item;
//    
//    public Transform interactTransform; // come up with a better name...
//    
//    public Sprite messageSprite;

    public Transform[] bridge;

//    public void Interact() {
//        GameObject.Find("MessageHandler").GetComponentInChildren<MessageHandler>().AddMessage(transform, new Vector3(0f, 2f, 1f), messageSprite, 4f);
//    }

	void ItemInteract(Transform t){
		if (t.GetComponent<UiItem>().worldItem == item) {
            Destroy(t.gameObject);
            foreach (Transform i in bridge) {
                i.gameObject.SetActive(true);
            }
		}
	}

//    public Vector3 GetInteractPosition() {
//        return interactTransform.position; 
//    }

}
