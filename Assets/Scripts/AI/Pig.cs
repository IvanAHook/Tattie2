using UnityEngine;
using System.Collections;

public class Pig : MonoBehaviour {

	public Animator anim;


	void Update () {
		if (Input.GetKeyDown (KeyCode.A)) {
			anim.SetTrigger("Ass");
		}
		
		
		
	}
}
