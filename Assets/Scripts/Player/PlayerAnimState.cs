using UnityEngine;
using System.Collections;

public class PlayerAnimState : MonoBehaviour {

	PlayerMovement player;
	Animator anim;


	void Start () {
		player = gameObject.GetComponentInParent<PlayerMovement> ();
		anim = GetComponent<Animator> ();
	}

	void Update () {
		if (player.isMoving) {
			anim.speed = 1f;
		} else {
			anim.speed = 0f;
		}
	}
}
