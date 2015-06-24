using UnityEngine;
using System.Collections;
using DG.Tweening;

public class TutorialTrigger : MonoBehaviour {

    public float messageDuration;

    public SpeechBubble speechBubble;
    public SpeechBubble currentSpeechBubble;
    bool played;
    public Transform player;
    public PlayerBlobMovement blob;

    void OnTriggerEnter(Collider other) {

        if (other.gameObject.tag == "Player" && blob.friendly) {
            if (currentSpeechBubble == null && speechBubble != null && !played) {
                currentSpeechBubble = Instantiate(speechBubble, transform.position, Quaternion.identity) as SpeechBubble;
                currentSpeechBubble.messageDuration = messageDuration;
                played = true;
            }
        }

    }


    void Update() {
        if (currentSpeechBubble != null) currentSpeechBubble.transform.position = player.position;
    }

}
