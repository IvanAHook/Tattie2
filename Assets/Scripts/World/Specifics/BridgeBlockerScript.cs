using UnityEngine;
using System.Collections;

public class BridgeBlockerScript : MonoBehaviour {

	void Start () {
	
	}
	
	void Update () {
        if (GameObject.Find("Player_Group").GetComponent<PlayerGroupController>().activePlayer == PlayerGroupController.ActivePlayer.Blob) {
            GetComponent<NavMeshObstacle>().carving = false;
        } else {
            GetComponent<NavMeshObstacle>().carving = true;
        }
	}
}
