using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {

    Vector3 originalPosition;
    Vector3 bounds;
    Vector3 cameraOffset;

    float zoomPercent;

    public float smooth;

    public Transform target;

	void Start () {

        cameraOffset = transform.position - target.position;
	
	}
	
	void Update () {

        transform.position = Vector3.Lerp(transform.position, new Vector3(target.position.x + cameraOffset.x, transform.position.y, target.position.z + cameraOffset.z), Time.deltaTime * smooth);

	}

}
