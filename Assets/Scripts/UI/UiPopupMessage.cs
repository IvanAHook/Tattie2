using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UiPopupMessage : MonoBehaviour {

    public Vector3 offset;
    public Transform target;

    Sprite messageSprite;
    float messageDuration;

    bool showMessage = true;
    float currentTime;

    Camera cam;

	void Start () {

        cam = Camera.main;
        transform.SetParent(target);
        transform.position = target.position + offset;
        transform.GetComponentInChildren<Image>().enabled = false;

        if (messageSprite) {
            transform.GetComponentInChildren<Image>().sprite = messageSprite;
        } else {
            //showMessage = false;
        }
	
	}
	
	void Update () {
        if (!target) {
            return;
        }

        Vector3 fwd = cam.transform.forward;
        transform.rotation = Quaternion.LookRotation(fwd);

        if (showMessage && transform.GetComponentInChildren<Image>().enabled == false) {
            transform.GetComponentInChildren<Image>().sprite = messageSprite;
            //transform.GetComponentInChildren<SpriteRenderer>().enabled = true; 
            transform.GetComponentInChildren<Image>().enabled = true; 
            currentTime = Time.time;
        } else if (!showMessage && transform.GetComponentInChildren<Image>().enabled == true) {
             //transform.GetComponentInChildren<SpriteRenderer>().enabled = false;
             //transform.GetComponentInChildren<Image>().enabled = false;   
        }

        if (Time.time - currentTime >= messageDuration) {
            //showMessage = false;
        }
	
	}

    public void NewMessage(Transform target, Vector3 offset, Sprite sprite, float duration) {
        this.target = target;
        this.offset = offset;
        messageSprite = sprite;
        messageDuration = duration;

        DisplayMessage(true);
    }

    public Transform GetTarget() {
        return target;
    }

    public void DisplayMessage(bool show) {
        showMessage = show;
    }
}

