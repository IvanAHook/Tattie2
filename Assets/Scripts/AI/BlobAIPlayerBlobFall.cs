using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using DG.Tweening;

public class BlobAIPlayerBlobFall : MonoBehaviour 
{
	
	public Transform target;
	public NavMeshAgent agent;

    public Transform light;

	private int moveSpeedHash;
	private int flexHash;
	private int LookAroundHash;
	private int pushUpHash;
	private int moveHash;
	private int tripHash;
	private int playerTripHash;
	private int playerGetUpHash;
	private int playerBlobRunningHash;
	private float nextRandomIdle;
	private float pushupTime;
	private float minRandomIdle = 1;
	private float maxRandomIdle = 7;
	bool hasFallen;
	bool hasTripped;

    private const string emissionID = "_Emission";
    private Material mat;
	
	private bool pushingUp;
	
	private enum BlobAction {Idling,PushingUp,Moving}
	private BlobAction myAction;
	
	Animator anim;
	float blendSpeed;
	
	bool triggered = false;
	
	void Awake(){
		anim = GetComponent<Animator> ();
		moveSpeedHash = Animator.StringToHash ("Speed");
		flexHash = Animator.StringToHash ("Flex");
		LookAroundHash = Animator.StringToHash ("LookAround");
		pushUpHash = Animator.StringToHash ("pushUp");
		tripHash = Animator.StringToHash ("Trip");
		playerTripHash = Animator.StringToHash ("PlayerTrip");
		playerGetUpHash = Animator.StringToHash ("PlayerGetUp");
		playerBlobRunningHash = Animator.StringToHash ("PlayerBlobRunning");
		RandomTime ();
		myAction = BlobAction.Idling;

        mat = transform.GetComponentInChildren<SkinnedMeshRenderer>().material;
	}
	float RandomTime ()
	{
		return Time.time + Random.Range (minRandomIdle, maxRandomIdle);
	}
	void Update()
	{
		if (agent.velocity.magnitude<0.15f) 
		{
			anim.SetFloat(moveSpeedHash, 0f);
			anim.SetBool (playerBlobRunningHash, false);
			if (myAction==BlobAction.PushingUp && Time.time>pushupTime)
			{
				myAction=BlobAction.Idling;
				anim.SetBool (pushUpHash, false);
			}
			
			if (Time.time>nextRandomIdle && myAction==BlobAction.Idling)
			{
				nextRandomIdle = RandomTime ();
				int randomTrigger = Random.Range (0,3);
				switch (randomTrigger)
				{
				case 0:
					//anim.SetTrigger (flexHash);
					break;
				case 1:
					//anim.SetTrigger (LookAroundHash);
					break;
				case 2:
					//anim.SetBool (pushUpHash, true);
					//pushupTime=RandomTime();
					//myAction=BlobAction.PushingUp;
					break;
				default:
					Debug.Log("Incorrect anim trigger selection");
					break;
				}
			}
		}
		else
		{
            if (myAction != BlobAction.Moving && moveHash != 0)
			{
				Debug.Log("HEJ");
				myAction=BlobAction.Moving;
				anim.SetTrigger (moveHash);
				anim.SetBool (pushUpHash, false);
				//anim.SetBool (playerBlobRunningHash, true);

			}
            if (agent.remainingDistance<= 0.2f && !hasTripped)
			{
				hasTripped = true;
				Trip ();
                mat.DOFloat(0.25f, emissionID, 1f);
                light.GetComponent<TestFlyingLight>().StartMoving();
			}
			if (hasFallen)
			{
				blendSpeed = Mathf.Lerp (0f, 0.5f, agent.velocity.magnitude / agent.speed);
				anim.SetFloat(moveSpeedHash, blendSpeed);
			} else
			{
				blendSpeed = Mathf.Lerp (0f, 1f, agent.velocity.magnitude / agent.speed);
				anim.SetFloat(moveSpeedHash, blendSpeed);
			}


		}
	}

	private void Trip ()
	{
		anim.SetTrigger (playerTripHash);
		agent.SetDestination(transform.position+transform.forward*2);
		hasFallen=true;
	}
	
	public void RunAgain ()
	{
		anim.SetTrigger (playerGetUpHash);
	}
	
	public void Trigger () 
	{
		if (triggered == false) {
			triggered = true;
			agent.SetDestination (target.position);
		} 
	}
	
}
