using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class BlobAI : MonoBehaviour 
{

	public Transform target;
	public NavMeshAgent agent;
	private int moveSpeedHash;
	private int flexHash;
	private int LookAroundHash;
	private int pushUpHash;
	private int moveHash;
	private int tripHash;
	private float nextRandomIdle;
	private float pushupTime;
	private float minRandomIdle = 1;
	private float maxRandomIdle = 7;
	bool hasFallen;

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
		RandomTime ();
		myAction = BlobAction.Idling;
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
					anim.SetTrigger (flexHash);
					break;
				case 1:
					anim.SetTrigger (LookAroundHash);
					break;
				case 2:
					anim.SetBool (pushUpHash, true);
					pushupTime=RandomTime();
					myAction=BlobAction.PushingUp;
					break;
				default:
					Debug.Log("Incorrect anim trigger selection");
					break;
				}
			}
		}
		else
		{
			if (myAction!=BlobAction.Moving && moveHash != 0)
			{
				myAction=BlobAction.Moving;
				anim.SetTrigger (moveHash);
				anim.SetBool (pushUpHash, false);
			}
			if (agent.remainingDistance < 1f)
			{
				myAction=BlobAction.Idling;
                if (transform.parent.tag != "Player") {
                    Destroy(transform.parent.gameObject);
                }
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
		anim.SetTrigger (tripHash);
		agent.destination = transform.position+transform.forward*2;
		hasFallen=true;
		Invoke ("RunAgain",2.5f);
	}

	void RunAgain ()
	{
		agent.SetDestination (target.position);
	}

	public void Trigger () 
	{
		if (triggered == false) {
			triggered = true;
			agent.SetDestination (target.position);
		} 
	}
}
