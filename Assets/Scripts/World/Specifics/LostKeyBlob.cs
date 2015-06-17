using UnityEngine;
using System.Collections;

public class LostKeyBlob : Interactable {

    bool idling;

    public float messageDuration2;

    public SpeechBubble speechBubble2;
    SpeechBubble currentSpeechBubble2;

	void Update () {
	
	}

    public override void Interact() {
        base.Interact();
    }

    public override void Interact(Transform item) {
        if (item.GetComponent<UiItem>().worldItem == interractItem) {
            if (base.currentSpeechBubble == null && currentSpeechBubble2 == null && speechBubble2 != null) {
                currentSpeechBubble2 = Instantiate(speechBubble2, transform.position, Quaternion.identity) as SpeechBubble;
                currentSpeechBubble2.messageDuration = messageDuration2;
                Destroy(item.gameObject);
            }
        }
    }


}
