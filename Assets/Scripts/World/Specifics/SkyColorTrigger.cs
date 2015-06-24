using UnityEngine;
using System.Collections;
using DG.Tweening;

public class SkyColorTrigger : MonoBehaviour {

    public float easeTime;
    public Color skyColor;
    Color defaultColor;

    GameObject[] goArray;

    void Start() {
        defaultColor = RenderSettings.ambientSkyColor;
    }

    void OnTriggerEnter(Collider other) {

        if (other.gameObject.tag == "Player") {
            DOTween.To(() => RenderSettings.ambientSkyColor, x => RenderSettings.ambientSkyColor = x, skyColor, easeTime);
        }

    }

    void OnTriggerExit(Collider other) {

        if (other.gameObject.tag == "Player") {
            DOTween.To(() => RenderSettings.ambientSkyColor, x => RenderSettings.ambientSkyColor = x, defaultColor, easeTime);
        }

    }

}
