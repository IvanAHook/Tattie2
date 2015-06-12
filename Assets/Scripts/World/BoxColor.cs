using UnityEngine;
using System.Collections;
using DG.Tweening;

public class BoxColor : MonoBehaviour {

    public Color acticveColor;
    public Color defaultColor;
    bool isActiveColor;
    float colorDelay = 1f;
    float colorTimer;

	void Start () {

        isActiveColor = false;
        SetVertexColor(Color.white);
	
	}
	
	void Update () {

        if (isActiveColor) {
            colorTimer += Time.deltaTime;
            if (colorTimer >= colorDelay) {
                SetVertexColor(defaultColor);
//                mat.DOColor(defaultColor, 0.75f).SetEase(Ease.InOutCubic);
                colorTimer = 0;
                isActiveColor = false;
            }
        }

	}

    public void IsActiveColor() {

//        mat.DOColor(acticveColor, 0.25f).SetEase(Ease.InOutCubic);
        SetVertexColor(acticveColor);
        isActiveColor = true;
        colorTimer = 0;

    }

    void SetVertexColor(Color color) {
        Mesh m = GetComponent<MeshFilter>().mesh;
        Color[] c = new Color[m.vertexCount];
        for (int i = 0; i < m.vertexCount; i++) {

            c[i] = color;
            
        }

        m.colors = c;

    }

}
