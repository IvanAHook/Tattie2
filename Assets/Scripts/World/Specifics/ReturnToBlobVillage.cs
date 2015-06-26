using UnityEngine;
using System.Collections;

public class ReturnToBlobVillage : MonoBehaviour {

    public bool pigHouseDone;

    void Update() {
        if (pigHouseDone) {
            foreach (GameObject go in GetComponentsInChildren<GameObject>()) {
                go.SetActive(true);
            }
        }
    }

}
