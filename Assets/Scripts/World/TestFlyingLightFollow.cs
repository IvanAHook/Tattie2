using UnityEngine;
using System.Collections;
using DG.Tweening;

public class TestFlyingLightFollow : MonoBehaviour {

    public Transform target;
	
	void Update () {

        //transform.position = target.position;
        if (target && target.GetComponent<TestFlyingLight>().startMoving) {
            transform.DOMove(target.position, 1f);
        }

	}
}
