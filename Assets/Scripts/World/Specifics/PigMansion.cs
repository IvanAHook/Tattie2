using UnityEngine;
using System.Collections;

public class PigMansion : MonoBehaviour {
    public NavMeshObstacle obstacle;

    void Update() {
        if (GameObject.Find("Player_Group").GetComponent<PlayerGroupController>().activePlayer == PlayerGroupController.ActivePlayer.Blob) {
            obstacle.carving = false;
        } else {
            obstacle.carving = true;
        }
    }
}
