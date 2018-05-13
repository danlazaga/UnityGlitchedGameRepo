using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MissileDamage : MonoBehaviour {

    [SerializeField] private float missileDamage;

    private const int PLAYER_MASK = 9;
    private Vector3 startPos;

    private void OnEnable()
    {
        startPos = this.transform.position;
    }


    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.layer == 9)
        {
            if (other.gameObject.layer == 9)
            {
                PlayerHealth health = other.GetComponent<PlayerHealth>();

                if (health != null)
                {
                    health.TakeDamage(missileDamage);
                }
            }
        }
    }

    private void OnDisable()
    {
        this.transform.position = startPos;
    }
}
