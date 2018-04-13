using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

[RequireComponent(typeof(PlayerInput))]
public class TurretMovement : MonoBehaviour
{
    [SerializeField] float rotSpeed;
    [Space(10)]
    [SerializeField] RangedFloat yRotRange;
    float yRot, xRot;
    PlayerInput playerInput;

    private void Awake()
    {
        playerInput = GetComponent<PlayerInput>();
    }

    private void Update()
    {
        xRot = playerInput.Horizontal * rotSpeed * Time.deltaTime;
        yRot = -playerInput.Vertical * rotSpeed * Time.deltaTime;

        // yRot = ClampAngle(yRot, yRotRange.minValue, yRotRange.maxValue);

        // Quaternion rotation = Quaternion.Euler(yRot, xRot, 0);
        // transform.rotation = rotation;

        transform.Rotate(yRot, xRot, 0);
    }

    private float ClampAngle(float angle, float min, float max)
    {
        if (angle < -360)
        {
            angle += 360;
        }

        if (angle > 360)
        {
            angle -= 360;
        }

        return Mathf.Clamp(angle, min, max);
    }
}