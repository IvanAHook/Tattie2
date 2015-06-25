using UnityEngine;
using System.Collections;

public class BigBlobHouse : Interactable {

    //public float messageDuration2;

    //public SpeechBubble speechBubble2;
    //SpeechBubble currentSpeechBubble2;

    //bool occupied = false;

    //public override void Interact() {
    //    if (GameObject.Find("Player_Group").GetComponent<PlayerGroupController>().activePlayer == PlayerGroupController.ActivePlayer.Blob && !occupied) {
    //        Debug.Log(occupied);
    //        base.Interact();
    //        occupied = true;
    //        Invoke("ResetOccupied", base.messageDuration);
    //    } else if (currentSpeechBubble2 == null && speechBubble2 != null && !occupied) {
    //        Debug.Log(occupied);
    //        currentSpeechBubble2 = Instantiate(speechBubble2, transform.position, Quaternion.identity) as SpeechBubble;
    //        currentSpeechBubble2.messageDuration = messageDuration2;
    //        occupied = true;
    //        Invoke("ResetOccupied", messageDuration2);
    //    }
    //}

    //void ResetOccupied() {
    //    occupied = false;
    //}

}