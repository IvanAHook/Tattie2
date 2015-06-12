using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class PlayerGroupController : MonoBehaviour {

    public LayerMask layerMask;

    public PlayerMovement player;
    public PlayerBlobMovement playerBlob;

    Camera cam;

    Vector3 targetPosition;
    ActivePlayer activePlayer;

    public Texture2D cursorInteract;
    public Texture2D cursorDefault;

    public GameObject clickDust;
    public GameObject clickLeaves;

    enum ActivePlayer { Player, Blob };

	void Start () {

        cam = Camera.main;

        activePlayer = ActivePlayer.Player;

        Cursor.SetCursor(cursorDefault, Vector2.zero, CursorMode.Auto);

	}
	
	void Update () {
        UpdateInput();
        UpdateCursor();
	}

    void UpdateInput() {

        if (Input.GetKeyDown(KeyCode.Space)) {
            SwitchPlayer();
        }

        if (Input.GetMouseButtonDown(0)) {
            RaycastHit hitInfo;

            // Dont continue if raycast does not hit anything!
            if (!Physics.Raycast(cam.ScreenPointToRay(Input.mousePosition), out hitInfo, Mathf.Infinity, layerMask)) {
                return;
            }
            // Dont continue if clicking on ui
            if (EventSystem.current.IsPointerOverGameObject()) {
                return;
            }

            if (hitInfo.transform.gameObject.layer == 8) {

                //RaycastHit hitInfo2;
                //if (Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), out hitInfo2, Mathf.Infinity, ~layerMask)) {
                //    int ch = GetDominantChannel(GetRaycastColor(hitInfo2));
                //    if (clickDust != null && clickLeaves != null) {
                //        if (ch == 0 || ch == 2) {
                //            Instantiate(clickDust, new Vector3(hitInfo.transform.position.x, hitInfo.transform.position.y + 1f, hitInfo.transform.position.z), Quaternion.identity);
                //        } else if (ch == 3) {
                //            Instantiate(clickLeaves, new Vector3(hitInfo.transform.position.x, hitInfo.transform.position.y + 1f, hitInfo.transform.position.z), Quaternion.identity);
                //        }
                //    }
                //}

                Instantiate(clickDust, new Vector3(hitInfo.transform.position.x, hitInfo.transform.position.y + 1f, hitInfo.transform.position.z), Quaternion.identity);

                if (activePlayer == ActivePlayer.Player) {
                    player.SetDestination(hitInfo.point);
                } else if (activePlayer == ActivePlayer.Blob) {
                    playerBlob.SetDestination(hitInfo.transform.position);
                }

            } else if (hitInfo.transform.gameObject.layer == 10 || hitInfo.transform.gameObject.layer == 13) {
                player.TargetHit(hitInfo.transform);
            }

        }

        //if (Input.GetMouseButton(0)) {

        //    RaycastHit hitInfo;

        //    // Dont continue if raycast does not hit anything!
        //    if (!Physics.Raycast(cam.ScreenPointToRay(Input.mousePosition), out hitInfo)) {
        //        return;
        //    }

        //    // Dont continue if clicking on ui
        //    if (EventSystem.current.IsPointerOverGameObject()) {
        //        return;
        //    }

        //    if (hitInfo.transform.gameObject.layer == 8 || hitInfo.transform.gameObject.layer == 10 || hitInfo.transform.gameObject.layer == 12) {

        //        if (activePlayer == ActivePlayer.Player) {
        //            player.SetDestination(hitInfo.transform.position);
        //        } else if (activePlayer == ActivePlayer.Blob) {
        //            playerBlob.SetDestination(hitInfo.transform.position);
        //        }

        //    }

        //}

    }

    // is this safe?
    void UpdateCursor() {
        RaycastHit hitInfo;

        if (Physics.Raycast(cam.ScreenPointToRay(Input.mousePosition), out hitInfo) && activePlayer == ActivePlayer.Player) {

            if (hitInfo.transform.GetComponent<Pickup>() || hitInfo.transform.GetComponent<Interactable>()) {
                Cursor.SetCursor(cursorInteract, Vector2.zero, CursorMode.Auto);
            } else {
                Cursor.SetCursor(cursorDefault, Vector2.zero, CursorMode.Auto);
            }

        } else {
            Cursor.SetCursor(cursorDefault, Vector2.zero, CursorMode.Auto);
        }

    }

    // make this more pretty somehow pliss ivan lol
    void SwitchPlayer() {
        if (activePlayer == ActivePlayer.Player) {
            activePlayer = ActivePlayer.Blob;
            playerBlob.active = true;
            player.active = false;
            cam.GetComponent<CameraScript>().target = playerBlob.transform;
        } else if (activePlayer == ActivePlayer.Blob) {
            activePlayer = ActivePlayer.Player;
            playerBlob.active = false;
            player.active = true;
            cam.GetComponent<CameraScript>().target = player.transform;
            playerBlob.SetDestination(player.transform.position - player.transform.forward);
        }
        Debug.Log(activePlayer.ToString());
    }

    Color GetRaycastColor(RaycastHit hitInfo) {
        int triangle = hitInfo.triangleIndex;
        Vector3 coord = hitInfo.barycentricCoordinate;

        if (hitInfo.transform.GetComponent<MeshFilter>()) {
            MeshFilter mf = hitInfo.transform.GetComponent<MeshFilter>() as MeshFilter;

            int[] triangleIndices = mf.sharedMesh.triangles;
            Color[] vertexColors = mf.sharedMesh.colors;

            int v0 = triangleIndices[triangle * 3];
            int v1 = triangleIndices[triangle * 3 + 1];
            int v2 = triangleIndices[triangle * 3 + 2];

            Color c0 = vertexColors[v0];
            Color c1 = vertexColors[v1];
            Color c2 = vertexColors[v2];

            return c0 * coord.x + c1 * coord.y + c2 * coord.z;
        }
        return Color.white;
    }

    int GetDominantChannel(Color color) {
        if (color.r > color.g && color.r > color.b && color.r > color.a) {
            return 0;
        }
        if (color.g > color.b && color.g > color.a) {
            return 1;
        }
        if (color.b > color.a) {
            return 2;
        }
        return 3;
    }

}
