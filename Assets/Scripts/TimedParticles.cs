using UnityEngine;
using System.Collections;

public class TimedParticles : MonoBehaviour {
	ParticleSystem part;
	private int timeID;
	public Material PulseMaterial;
	public float Timing =11;
	// Use this for initialization
	void Start () 
	{
		timeID = Shader.PropertyToID ("_ScriptedTime");
		part = GetComponent<ParticleSystem> ();
	}
	
	// Update is called once per frame
	void Update () 
	{
		//Debug.Log (Mathf.Sin (Time.time));
		if (Mathf.Sin(Time.time+Timing)>0.9 && !part.isPlaying)
		{
			part.Play ();
		}
		if (PulseMaterial) 
		{
			PulseMaterial.SetFloat (timeID,Time.time);
		}

	}
}
