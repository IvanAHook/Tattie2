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
	private float nextRandomIdle;
	private float pushupTime;
	private float minRandomIdle = 1;
	private float maxRandomIdle = 7;
	bool hasFallen;
	bool hasTripped;

    private const string emissionID = "_Emission";
    private Material mat;
	
	//private bool pushingUp;
	//private bool 
	
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
				myAction=BlobAction.Moving;
				anim.SetTrigger (moveHash);
				anim.SetBool (pushUpHash, false);
			}
            if (agent.remainingDistance<= 0.2f && !hasTripped)
			{
				hasTripped = true;
				Trip ();
                mat.DOFloat(0.25f, emissionID, 1f);
                light.GetComponent<TestFlyingLight>().StartMoving();
			}
			blendSpeed = Mathf.Lerp (0, 1, agent.velocity.magnitude / agent.speed);
			anim.SetFloat(moveSpeedHash, blendSpeed);
			if (blendSpeed>0.8f)
			{
				//anim.SetTrigger (tripHash);
				if (!hasFallen)
				{
					float tripRandom = Random.value;
					if (tripRandom<0.0f)
					{
						Trip ();
					}
				}
			}
		}
	}
	private void Trip ()
	{
		anim.SetTrigger (playerTripHash);
		agent.destination = transform.position+transform.forward*2;
		hasFallen=true;
		//Invoke ("RunAgain",2.5f);
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
