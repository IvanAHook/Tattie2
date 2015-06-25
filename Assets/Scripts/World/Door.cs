using UnityEngine;
using System.Collections;
using DG.Tweening;

public class Door : Interactable {

    public AudioClip sfxDoorOpen;

	public BoxCollider col;

    bool opened = false;

    //public Transform blocker;

	void Start () {
        base.audioSource = GetComponent<AudioSource>();
	}

    public override void Interact() {
        if (interractItem == null && !opened) {
            OpenDoor();
            opened = true;
        }
    }

    public override void Interact(Transform item) {
        if (item.GetComponent<UiItem>().worldItem == interractItem) {
            OpenDoor();
            Destroy(item.gameObject);
		}
	}

    void OpenDoor() {

        transform.DORotate(new Vector3(0f, -90f, 0f), 1f);

        //blocker.transform.gameObject.SetActive(false);
        //col.enabled = false;
        GetComponent<NavMeshObstacle>().enabled = false;
        audioSource.PlayOneShot(sfxDoorOpen);
        //transform.DOMove (destination, 0.2f).SetEase (Ease.InOutCubic);
    }

}
