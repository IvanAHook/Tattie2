using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;


public class MouseHandler : MonoBehaviour {

    Camera cam;

	void Start () {

        cam = Camera.main;
	
	}
	
	void Update () {
	
	}

    void UpdateInput() {

        if (Input.GetMouseButtonDown(0)) {

            RaycastHit hitInfo;

            // Dont continue if raycast does not hit anything!
            if (!Physics.Raycast(cam.ScreenPointToRay(Input.mousePosition), out hitInfo)) {
                return;
            }

            // Dont continue if clicking on ui
            if (EventSystem.current.IsPointerOverGameObject()) {
                return;
            }

            if (hitInfo.transform.gameObject.layer == 8) { // Affect ground

                hitInfo.transform.SendMessage("IsActiveColor", SendMessageOptions.DontRequireReceiver);

            } else if (hitInfo.transform.gameObject.layer == 10 || hitInfo.transform.gameObject.layer == 12) {

            }
        }

    }


}
