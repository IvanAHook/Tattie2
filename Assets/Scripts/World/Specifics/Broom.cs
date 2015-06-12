using UnityEngine;
using System.Collections;

public class Broom : Pickup {

    private Material mat;
    private int highlightID;

    void Awake() {
        highlightID = Shader.PropertyToID("_Highlight");
    }

	void Start () {
        base.startPos = transform.position;
        mat = transform.GetComponentInChildren<MeshRenderer>().material;
        mat.SetFloat(highlightID, 1f);
	}

}
