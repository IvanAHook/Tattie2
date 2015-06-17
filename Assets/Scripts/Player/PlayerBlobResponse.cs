using UnityEngine;
using System.Collections;

public class PlayerBlobResponse : MonoBehaviour {

    public float messageDuration;

    public SpeechBubble speechBubble;
    SpeechBubble currentSpeechBubble;

    public void ShowResponse() {
        if (currentSpeechBubble == null && speechBubble != null) {
            currentSpeechBubble = Instantiate(speechBubble, transform.position, Quaternion.identity) as SpeechBubble;
            currentSpeechBubble.messageDuration = messageDuration;
        }
    }

}
