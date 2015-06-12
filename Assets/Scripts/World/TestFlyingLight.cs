using UnityEngine;
using System.Collections;
using DG.Tweening;

public class TestFlyingLight : MonoBehaviour {

    public Transform[] waypoints;

    public Transform spiderweb;
    public Transform light;

    public bool startMoving;
    int i = 0;

	void Start () {
	
	}
	
	void Update () {

        if (startMoving) {

            
            if (Vector3.Distance(transform.position, waypoints[i].position) < 1f) {

                if (i < (waypoints.Length - 1)) {

                    i += 1;

                }

            }

            Sequence testS = DOTween.Sequence();
            testS.Append(transform.DOMove(waypoints[i].position, 2f))
                .Append(transform.DORotate(new Vector3(0f, 180f, 0f), 2f));


            //transform.DOMove(waypoints[i].position, 4f);
            //Vector3.MoveTowards(transform.position, waypoints[i].position, 1f);
        }

        if (startMoving && Vector3.Distance(transform.position, waypoints[waypoints.Length - 1].position) < 0.2) {
            light.SetParent(spiderweb);
            spiderweb.GetComponent<SpiderwebFirefly>().Activate();
            Destroy(gameObject);
        }
	}

    public void StartMoving() {
        startMoving = true;
        light.gameObject.SetActive(true);
    }

}
