using UnityEngine;
using System.Collections;

public class LostKeyBlob : Interactable {

    bool idling;

    public float messageDurationHostile;

    public SpeechBubble speechBubbleHostile;
    SpeechBubble currentSpeechBubbleHostile;

    public float messageDurationComplete;

    public SpeechBubble speechBubbleComplete;
    SpeechBubble currentSpeechBubbleComplete;

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
    }

    public override void Interact(Transform item) {
        if (item.GetComponent<UiItem>().worldItem == interractItem) {
            if (base.currentSpeechBubble == null && currentSpeechBubbleComplete == null && speechBubbleComplete != null) {
                currentSpeechBubbleComplete = Instantiate(speechBubbleComplete, transform.position, Quaternion.identity) as SpeechBubble;
                currentSpeechBubbleComplete.messageDuration = messageDurationComplete;
                Destroy(item.gameObject);
            }
        }
    }

    void ResetOccupied() {
        occupied = false;
    }

}
