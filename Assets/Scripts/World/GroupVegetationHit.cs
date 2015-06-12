using UnityEngine;
using System.Collections;

public class GroupVegetationHit : MonoBehaviour {

	void OnTriggerEnter(Collider other) {
		foreach (Transform child in transform) {
			child.SendMessage("TriggerWobble", other.transform.position, SendMessageOptions.DontRequireReceiver);
		}
	}

}
