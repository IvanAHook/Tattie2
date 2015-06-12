using UnityEngine;
using System.Collections;
using DG.Tweening;

public class UnlockedDoor : Interactable {

    public AudioClip sfxDoorOpen;
    AudioSource audioSource;

    Animation anim;
    public BoxCollider col; // remove this

    public Transform blocker;

    void Start() {
        anim = GetComponentInChildren<Animation>();
        audioSource = GetComponent<AudioSource>();
        //destination = new Vector3 (transform.position.x, transform.position.y, transform.position.z + 2f);
    }

    void Interact() {
        OpenDoor();
    }

    //public void OpenDoor() {
    //    anim["Take 001"].wrapMode = WrapMode.ClampForever;
    //    anim.Play("Take 001");
    //    blocker.transform.gameObject.SetActive(false);
    //    col.enabled = false;
    //    audioSource.PlayOneShot(sfxDoorOpen);
    //    //transform.DOMove (destination, 0.2f).SetEase (Ease.InOutCubic);
    //}

    public void OpenDoor() {

        transform.DORotate(new Vector3(0f, 90f, 0f), 1f);

        blocker.transform.gameObject.SetActive(false);
        col.enabled = false;
        audioSource.PlayOneShot(sfxDoorOpen);
        //transform.DOMove (destination, 0.2f).SetEase (Ease.InOutCubic);
    }

}
