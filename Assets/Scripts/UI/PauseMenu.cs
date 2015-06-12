using UnityEngine;
using System.Collections;

public class PauseMenu : MonoBehaviour {

	public KeyCode pause;

	public GameObject pauseMenu;

	bool paused = false;

	void Awake(){
		pauseMenu.SetActive (false);
	}


	void Update () {
		if(Input.GetKeyDown(pause)){
			TogglePause();
		}
	}
	

	public void TogglePause(){
		if (Time.timeScale == 0f) {
			Time.timeScale = 1f;
			pauseMenu.SetActive (false);
		} else {
			Time.timeScale = 0f;
			pauseMenu.SetActive (true);
		}
	}

	public void QuitGame(){
		Time.timeScale = 1f;
		Application.LoadLevel ("MainMenu");
	}
}
