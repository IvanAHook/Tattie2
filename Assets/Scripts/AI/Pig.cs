using UnityEngine;
using System.Collections;

public class Pig : MonoBehaviour {

    public Transform targetPatrol1;
    public Transform targetPatrol2;
    public Transform targetPatrol3;
    public Transform targetOpenDoor;

    public NavMeshAgent agent;

    private int moveSpeedHash;
    private int assHash;
    private int suspiciousHash;
    private int fiddlingHash;
    private int laughHash;
    private int moveHash;
    private float nextRandomIdle;
    private float fiddleTime;
    private float minRandomIdle = 3;
    private float maxRandomIdle = 8;
    bool idleAgain;

    private const string stopFiddle = "StopFiddle";

    int fiddleTimeCount = 0;


    private enum PigAction { Idling, Fiddling, Moving }
    private PigAction myAction;

    Animator anim;
    float blendSpeed;

    bool triggered = false;
    bool fiddle = false;
    bool currentlyMoving;
    bool currentlyIdling;
    bool hasOpenedDoor = false;
    bool idleDone;

    void Awake() {
        anim = GetComponent<Animator>();
        moveSpeedHash = Animator.StringToHash("Speed");
        assHash = Animator.StringToHash("Ass");
        suspiciousHash = Animator.StringToHash("Suspicious");
        fiddlingHash = Animator.StringToHash("Fiddling");
        laughHash = Animator.StringToHash("Laugh");
        RandomTime();
        myAction = PigAction.Idling;
    }

    float RandomTime() {
        return Time.time + Random.Range(minRandomIdle, maxRandomIdle);
    }

    void Update() {

        PlayAnimations();

        Patrol();

    }




    public void PlayAnimations() {
        if (agent.velocity.magnitude < 0.15f) {
            anim.SetFloat(moveSpeedHash, 0f);
            currentlyMoving = false;

            if (myAction == PigAction.Idling && Time.time > fiddleTime) {

                anim.SetBool(fiddlingHash, false);
            }

            if (Time.time > nextRandomIdle && agent.pathStatus == NavMeshPathStatus.PathComplete && myAction != PigAction.Idling) {
                myAction = PigAction.Idling;
                nextRandomIdle = RandomTime();
                int randomTrigger = Random.Range(0, 3);
                currentlyIdling = true;
                switch (randomTrigger) {
                    case 0:
                        anim.SetTrigger(assHash);
                        break;
                    case 1:
                        anim.SetTrigger(laughHash);
                        break;
                    case 2:
                        anim.SetBool(fiddlingHash, true);
                        fiddleTime = RandomTime();
                        Invoke(stopFiddle, fiddleTime - Time.time);
                        myAction = PigAction.Fiddling;
                        break;
                    default:
                        break;
                }
            }
        } else {
            if (myAction != PigAction.Moving && moveHash != 0) {
                myAction = PigAction.Moving;
                anim.SetTrigger(moveHash);

            }
            blendSpeed = Mathf.Lerp(0, 1, agent.velocity.magnitude / agent.speed);
            anim.SetFloat(moveSpeedHash, blendSpeed);
            currentlyMoving = true;
            //currentlyIdling = false;
        }
    }

    public void Patrol() {
        if (currentlyMoving == false && hasOpenedDoor == false && currentlyIdling == false && myAction != PigAction.Moving) {
            myAction = PigAction.Moving;
            anim.SetTrigger(moveHash);

            nextRandomIdle = RandomTime();
            int randomTrigger = Random.Range(0, 3);
            switch (randomTrigger) {
                case 0:
                    agent.SetDestination(targetPatrol1.position);
                    break;
                case 1:
                    agent.SetDestination(targetPatrol2.position);
                    break;
                case 2:
                    agent.SetDestination(targetPatrol3.position);
                    bool fiddle = false;
                    break;
                default:
                    break;
            }

        }
    }


    public void StopFiddle() {
        currentlyIdling = false;
    }

    public void OpenDoor() {
        anim.SetTrigger("StartRunning");
        myAction = PigAction.Moving;
        anim.SetTrigger(moveHash);
        anim.SetBool(fiddlingHash, false);
        agent.SetDestination(targetOpenDoor.position);
        hasOpenedDoor = true;
    }
}
