using UnityEngine;
using System.Collections;
using DG.Tweening;

public class PigDoor : Door {

    public Vector3 doorRot;

    public override void Interact() {
        if (interractItem == null && !base.opened) {
            OpenPigDoor();
            base.opened = true;
        }
    }

    void OpenPigDoor() {

        transform.DORotate(doorRot, 1f);

        GetComponent<NavMeshObstacle>().enabled = false;
        audioSource.PlayOneShot(sfxDoorOpen);
    }

}
