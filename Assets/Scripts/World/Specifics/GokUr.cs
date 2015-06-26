using UnityEngine;
using System.Collections;

public class GokUr : Interactable {

    public PlayerBlobMovement blob;
    public PlayerMovement player;
    public Transform fleeTarget;
    public Pig pig;

    public override void Interact() {
        base.Interact();

        blob.SetDestination(player.transform.position - player.transform.forward);
        pig.OpenDoor();
    }

}
