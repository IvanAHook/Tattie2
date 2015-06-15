using UnityEngine;
using System.Collections;

public class Bridge : MonoBehaviour {

    public GameObject bridgeWhole;
    public GameObject bridgeBroken;
    public NavMeshObstacle obstacle;

    void Update() {
        if (GameObject.Find("Player_Group").GetComponent<PlayerGroupController>().activePlayer == PlayerGroupController.ActivePlayer.Blob) {
            obstacle.carving = false;
        } else {
            obstacle.carving = true;
        }
    }

    public void SwitchState() {
        bridgeWhole.SetActive(true);
        bridgeBroken.SetActive(false);
    }

}
