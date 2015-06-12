using UnityEngine;
using System.Collections;

public class PlayerBlobAnimState : MonoBehaviour {

    PlayerBlobMovement player;
    Animator anim;


    void Start() {
        player = gameObject.GetComponentInParent<PlayerBlobMovement>();
        anim = GetComponent<Animator>();
    }

    void Update() {
        if (player.isMoving) {
            anim.speed = 1f;
        } else {
            anim.speed = 0f;
        }
    }
}
