using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

    static Transform playerTransform;

	void Start () {

        if (transform) {
            playerTransform = transform;
        }
	
	}
	
	void Update () {
	
	}

    static Transform GetTransform() {
        return playerTransform;
    }

}
