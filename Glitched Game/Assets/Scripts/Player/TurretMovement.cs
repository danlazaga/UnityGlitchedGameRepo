using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

[RequireComponent(typeof(PlayerInput))]
public class TurretMovement : NetworkBehaviour
{

    [SerializeField] float rotSpeed;
    [Space(10)]
    [SerializeField] RangedFloat turretXRot;
    float yRot, xRot;
    PlayerInput playerInput;

    private void Awake()
    {
        playerInput = GetComponent<PlayerInput>();
    }

    private void Update()
    {
        if(!isLocalPlayer) return;

        yRot += playerInput.Horizontal * rotSpeed * Time.deltaTime;
        transform.eulerAngles = new Vector3(transform.eulerAngles.x, yRot, transform.eulerAngles.z);

        xRot -= playerInput.Vertical * rotSpeed * Time.deltaTime;
        xRot = Mathf.Clamp(xRot, turretXRot.minValue, turretXRot.maxValue);
        transform.eulerAngles = new Vector3(xRot, transform.eulerAngles.y, transform.eulerAngles.z);
    }
}