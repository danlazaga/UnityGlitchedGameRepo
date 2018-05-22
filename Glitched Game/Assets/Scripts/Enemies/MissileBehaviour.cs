using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MissileBehaviour : MonoBehaviour
{
    //[SerializeField] private Animator animator;
    //[SerializeField] private ParticleSystem effect;

    private Vector3 startPos;
    private GameObject[] targets;

    private Transform target;
    private bool hasTarget;

    private void OnEnable()
    {
        startPos = this.transform.position;
       
        //targets = GameObject.FindGameObjectsWithTag("PlayAreas");
        //int x = Random.Range(0, targets.Length);
        //target = targets[x].transform;
        //hasTarget = true;
    }

    private void OnDisable()
    {
        this.transform.position = startPos;
    }
}
