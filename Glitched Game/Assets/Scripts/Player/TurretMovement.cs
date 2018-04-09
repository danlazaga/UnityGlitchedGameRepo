using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[RequireComponent(typeof(PlayerInput))]
public class TurretMovement : MonoBehaviour {

    [SerializeField] float rotSpeed;
    [SerializeField] GameObject turret;
    float turretYRot;
    [SerializeField] float turretYRotMin;
    [SerializeField] float turretYRotMax;

    float turretXRot;
    [SerializeField] float turretXRotMin;
    [SerializeField] float turretXRotMax;


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


        //transform.Rotate((Vector3.left * playerInput.Vertical * rotSpeed * Time.deltaTime));
        //transform.Rotate(Vector3.up*playerInput.Horizontal*rotSpeed*Time.deltaTime);
        turretYRot += playerInput.Horizontal * rotSpeed * Time.deltaTime;

        turretYRot = Mathf.Clamp(turretYRot, turretYRotMin, turretYRotMax);

        transform.eulerAngles = new Vector3(transform.eulerAngles.x, turretYRot, transform.eulerAngles.z);


        turretXRot += playerInput.Vertical * rotSpeed * Time.deltaTime;

        turretXRot = Mathf.Clamp(turretXRot, turretXRotMin, turretXRotMax);

        turret.transform.eulerAngles = new Vector3(turretXRot,turret.transform.eulerAngles.y, turret.transform.eulerAngles.z);




    }
}
