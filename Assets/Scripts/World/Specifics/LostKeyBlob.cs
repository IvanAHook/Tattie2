using UnityEngine;
using System.Collections;

public class LostKeyBlob : Interactable {

    bool idling;

    public Animator fade;

    public float messageDurationHostile;

    public SpeechBubble speechBubbleHostile;
    SpeechBubble currentSpeechBubbleHostile;

    public float messageDurationComplete;

    public SpeechBubble speechBubbleComplete;
    SpeechBubble currentSpeechBubbleComplete;

    public bool isMayor;

    bool occupied = false;

    public override void Interact() {
        if (GameObject.Find("Player_Group").GetComponent<PlayerGroupController>().activePlayer == PlayerGroupController.ActivePlayer.Blob && !occupied) {
            base.Interact();
            occupied = true;
            Invoke("ResetOccupied", base.messageDuration);
        } else if (currentSpeechBubbleHostile == null && speechBubbleHostile != null && !occupied) {
            currentSpeechBubbleHostile = Instantiate(speechBubbleHostile, transform.position, Quaternion.identity) as SpeechBubble;
            currentSpeechBubbleHostile.messageDuration = messageDurationHostile;
            occupied = true;
            Invoke("ResetOccupied", messageDurationHostile);
        }
        if (isMayor) {
            FinishGame();
        }
    }

    public override void Interact(Transform item) {
        if (interractItem != null) {
            if (item.GetComponent<UiItem>().worldItem == interractItem) {
                if (currentSpeechBubbleComplete == null && speechBubbleComplete != null) {
                    if (currentSpeechBubbleHostile != null) currentSpeechBubbleHostile.enabled = false;
                    if (base.currentSpeechBubble != null) base.currentSpeechBubble.enabled = false;
                    speechBubbleHostile = speechBubbleComplete;
                    base.speechBubble = speechBubbleComplete;
                    currentSpeechBubbleComplete = Instantiate(speechBubbleComplete, transform.position, Quaternion.identity) as SpeechBubble;
                    currentSpeechBubbleComplete.messageDuration = messageDurationComplete;
                    Destroy(item.gameObject);
                }
            }
        }
    }


    void ResetOccupied() {
        occupied = false;
    }


    public void FinishGame() {
        StartCoroutine(FinishGame2());
    }

    public IEnumerator FinishGame2() {
        fade.SetTrigger("Fade");
        yield return new WaitForSeconds(4f);
        Application.LoadLevel("MainMenu");
    }
	
}
