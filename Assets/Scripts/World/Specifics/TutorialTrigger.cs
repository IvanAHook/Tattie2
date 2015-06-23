using UnityEngine;
using System.Collections;

public class TutorialTrigger : MonoBehaviour {

    public float messageDuration;

    public SpeechBubble speechBubble;
    public SpeechBubble currentSpeechBubble;
    bool played;

    void OnTriggerEnter(Collider other) {

        if (other.gameObject.tag == "Player") {

            if (currentSpeechBubble == null && speechBubble != null && !played) {
                currentSpeechBubble = Instantiate(speechBubble, transform.position, Quaternion.identity) as SpeechBubble;
                currentSpeechBubble.messageDuration = messageDuration;
                played = true;
            }
        }
    }

}
