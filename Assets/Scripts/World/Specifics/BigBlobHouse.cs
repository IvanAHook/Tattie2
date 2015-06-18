using UnityEngine;
using System.Collections;

public class BigBlobHouse : Interactable {

    public float messageDuration2;

    public SpeechBubble speechBubble2;
    SpeechBubble currentSpeechBubble2;

    public override void Interact() {
        if (GameObject.Find("Player_Group").GetComponent<PlayerGroupController>().activePlayer == PlayerGroupController.ActivePlayer.Blob) {
            base.Interact();
        } else {
            if (base.currentSpeechBubble == null && currentSpeechBubble2 == null && speechBubble2 != null) {
                currentSpeechBubble2 = Instantiate(speechBubble2, transform.position, Quaternion.identity) as SpeechBubble;
                currentSpeechBubble2.messageDuration = messageDuration2;
            }
        }
    }

}