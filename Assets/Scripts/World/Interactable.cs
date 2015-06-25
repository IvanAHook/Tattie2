using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class Interactable  : MonoBehaviour {

    Animator animator;


    //public Vector3 messageOffset;
    public float messageDuration;
    //public Sprite messageSprite;
    //public UiPopupMessage message;

    public SpeechBubble speechBubble;
    public SpeechBubble currentSpeechBubble;

    public Transform interractItem;
    public Transform interactTransform;

    public AudioClip interractSound;
    protected AudioSource audioSource;

    void Start() {
        if (animator) {
            animator = gameObject.GetComponentInChildren<Animator>();
        }
        audioSource = GetComponent<AudioSource>();
    }

    public void PlayAnim() {
        if (animator) {
            animator.SetTrigger("ClickTrigger");
        }
    }

    public virtual void Interact() {
        if (interractSound != null) {
            audioSource.PlayOneShot(interractSound);
        }
        if (currentSpeechBubble == null && speechBubble != null) {
            currentSpeechBubble = Instantiate(speechBubble, transform.position, Quaternion.identity) as SpeechBubble;
            currentSpeechBubble.messageDuration = messageDuration;
        }
    }

    public virtual void Interact(Transform item) {

        //if (t.GetComponent<UiItem>().worldItem == item;) {
        //    Destroy(t.gameObject);
        //}
    }

    public Transform GetInteractPosition() {
        return interactTransform;
    }
}
