using UnityEngine;
using System.Collections;

public class Listener : MonoBehaviour {

    public Transform player;

	void Start () {
        transform.position = player.position;
	}
	
	void Update () {
        transform.position = player.position;
	}
}
