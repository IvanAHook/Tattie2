using UnityEngine;
using System.Collections;
using DG.Tweening;

public class Pickup : MonoBehaviour {
	

    public Transform worldItem;
	public Sprite sprite;

	public float shakeDuration;
	public Vector3 shakeStrength;
	public int shakeVibrato;
	public float shakeRandomness;

	protected Vector3 startPos;
	bool playingAnim = false;


	void Start (){
		startPos = transform.position;
	}

    public void ResetItem() {

    }

	public void PlayAnim(){
		if (!playingAnim) {
			StartCoroutine ("AnimTimer");
		}
	}

	IEnumerator AnimTimer(){
		playingAnim = true;
		Sequence mySequence = DOTween.Sequence ();
		mySequence.Append (transform.DOShakeRotation (shakeDuration, shakeStrength, shakeVibrato, shakeRandomness)); 
		mySequence.Append (transform.DOMove (startPos, 0f, false)); 
		yield return new WaitForSeconds(mySequence.Duration ()); 
		playingAnim = false;
	}

}
