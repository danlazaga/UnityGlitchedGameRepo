using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[RequireComponent(typeof(PlayerInput))]
public class TurretMovement : MonoBehaviour {

    [SerializeField] float rotSpeed;
    [SerializeField] GameObject turret;

    PlayerInput playerInput;

    private void Awake()
    {

        playerInput = GetComponent<PlayerInput>();
    }

    private void Update()
    {
        //Quaternion turretPointAt = Quaternion.LookRotation(new Vector3(0,playerInput.Vertical, 0));
        //turret.transform.rotation = Quaternion.Slerp(Quaternion.identity, transform.rotation, Time.deltaTime * playerInput.Vertical);
        //Mathf.Clamp(playerInput.Vertical, 10, 10);
        //Mathf.Clamp(playerInput.Horizontal, 10, 10);


        transform.Rotate((Vector3.left * playerInput.Vertical * rotSpeed * Time.deltaTime));
        transform.Rotate(Vector3.up*playerInput.Horizontal*rotSpeed*Time.deltaTime);

    }
}
