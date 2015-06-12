using UnityEngine;
using System.Collections;

public class VegetationHit : MonoBehaviour {
	
	//private const float axWobble;
	public float SlowDown = 0.5f;
	public float SpeedUp = 10f;
	public float PlayerPush =1;
	public float ExploPush =2;
	//local vars
	private ParticleSystem part;
	private Material mat;
	private float startWobble;
	private float currentWobble;
	private bool doWobble;
	private bool slowDown;
	private int wobbleID;
	private int playerX;
	private int playerZ;
	private int hitTime;
	
	float maxIntensity = 1;
	
	void Awake()
	{
		part=GetComponentInChildren<ParticleSystem>();
		mat = GetComponent<Renderer> ().material;
		wobbleID = Shader.PropertyToID ("_Intensity");
		playerX = Shader.PropertyToID ("_PlayerX");
		playerZ = Shader.PropertyToID ("_PlayerZ");
		hitTime = Shader.PropertyToID ("_HitTime");
		startWobble = mat.GetFloat (wobbleID);
		currentWobble = startWobble;
	}
	
	void Update () 
	{
		if (doWobble) 
		{
			mat.SetFloat (wobbleID,currentWobble);  //updating the materials wobble value
			if (!slowDown)
			{
				currentWobble+=Time.deltaTime*SpeedUp;
				if (currentWobble>=maxIntensity)
				{
					slowDown=true;
				}
			}
			else
			{
				currentWobble-=Time.deltaTime*SlowDown;
			}
			
			
			//stop controlling wobble when it has reached the original value
			if (currentWobble<=startWobble)
			{
				currentWobble=startWobble;
				doWobble=false;
				slowDown=false;
			}
		}
	}
	
	void Wobble (Vector3 dir)
	{
		if (part) part.Play ();
		doWobble = true;
		slowDown = false;
		dir = Quaternion.Euler (-transform.localEulerAngles) * dir; //Shifting the pushdirection baset on local rotation of the plant
		
		//setting values for the shader
		mat.SetFloat (playerX, dir.x); 
		mat.SetFloat (playerZ, dir.z);
		mat.SetFloat (hitTime, Time.time);
	}
	
	void OnTriggerEnter(Collider other)
	{
		Vector3 pushDir = other.transform.position - transform.position;
		maxIntensity = PlayerPush;
		Wobble (pushDir);

	}

	public void TriggerWobble(Vector3 pos) {
		Vector3 pushDir = pos - transform.position;
		maxIntensity = PlayerPush;
		Wobble (pushDir);
	}
	
	public void Explosion (Vector3 exploPos, float dist)
	{
		maxIntensity = dist*ExploPush;
		Vector3 pushDir =  exploPos-transform.position ;
		Wobble (pushDir);
	}
	
}