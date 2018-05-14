using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MissileDamage : MonoBehaviour {

    [SerializeField] private float missileDamage;

    private const int PLAYER_MASK = 9;
    private Vector3 startPos;
    private GameObject[] targets;

    private Transform target;
    private bool hasTarget;


    private void OnEnable()
    {
        startPos = this.transform.position;
        targets = GameObject.FindGameObjectsWithTag("PlayAreas");
        int x = Random.Range(0, targets.Length);
        target = targets[x].transform;
        hasTarget = true;


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
