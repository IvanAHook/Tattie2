using UnityEngine;
using System.Collections;

public class PlayerState : MonoBehaviour {

    public State playerState;

	void Start () {

        playerState = State.Idle;

	}

}
