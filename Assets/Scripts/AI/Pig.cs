using UnityEngine;
using System.Collections;

public class Pig : MonoBehaviour {
		
		public Transform target;
		public NavMeshAgent agent;
		private int moveSpeedHash;
		private int assHash;
		//private int LookAroundHash;
		//private int pushUpHash;
		private int moveHash;
		//private int tripHash;
		private float nextRandomIdle;
		//private float pushupTime;
		private float minRandomIdle = 1;
		private float maxRandomIdle = 7;
		bool idleAgain;
		
		private enum PigAction {Idling,Fiddling,Moving,Ass,Laugh,Suspicious}
		private PigAction myAction;
		
		Animator anim;
		float blendSpeed;
		
		bool triggered = false;
		
		void Awake(){
			anim = GetComponent<Animator> ();
			moveSpeedHash = Animator.StringToHash ("Speed");
			assHash = Animator.StringToHash ("Ass");
			RandomTime ();
			myAction = PigAction.Idling;
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
				
				if (Time.time>nextRandomIdle && myAction==PigAction.Idling)
				{
					nextRandomIdle = RandomTime ();
					int randomTrigger = Random.Range (0,3);
					switch (randomTrigger)
					{
					case 0:
						anim.SetTrigger (assHash);
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
				if (myAction!=PigAction.Moving && moveHash != 0)
				{
					myAction=PigAction.Moving;
					anim.SetTrigger (moveHash);
				}
				blendSpeed = Mathf.Lerp (0, 1, agent.velocity.magnitude / agent.speed);
				anim.SetFloat(moveSpeedHash, blendSpeed);
			}
		}
		private void Trip ()
		{
			/*anim.SetTrigger (tripHash);
			agent.SetDestination(transform.position + transform.forward * 2);
			hasFallen=true;
			Invoke ("RunAgain",2.5f);*/
		}
		
		void RunAgain ()
		{
			agent.SetDestination (target.position);
		}
		
		public void Trigger () 
		{
			/*if (triggered == false) {
				anim.SetTrigger("StartRunning");
				myAction=BlobAction.Moving;
				anim.SetTrigger (moveHash);
				anim.SetBool (pushUpHash, false);
				triggered = true;
				agent.SetDestination (target.position);
			} */
		}
	}
