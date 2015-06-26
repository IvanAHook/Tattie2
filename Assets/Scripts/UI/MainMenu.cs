using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

	public GameObject mainMenu;

	public BlobAI[] blobList;

	public Animator anim;

	public Animator fade;

	public void StartGame(){
		StartCoroutine (StartGame2());
	}

	public IEnumerator StartGame2(){
		anim.SetTrigger ("LookUp");
		BlobRunAway ();
		yield return new WaitForSeconds (4f);
		fade.SetTrigger ("Fade");
		yield return new WaitForSeconds (1f);
	}
	
	public void QuitGame(){
		Application.Quit();
	}

	public void LoadAfterFade(){
		Application.LoadLevel("MainLevel");
	}

	void BlobRunAway(){
		foreach(BlobAI blobai in blobList){
			if (blobai != null){
				blobai.Invoke ("Trigger", 0f);
			}
		}
	}

}
