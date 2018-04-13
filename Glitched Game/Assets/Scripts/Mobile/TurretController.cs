using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

public class TurretController : MonoBehaviour
{
    [SerializeField] Transform turret;
    [Space(10)]
    [SerializeField] TurretLookAt turretLook;

    public event Action OnFire = delegate { };
    public event Action OnSwitchWeapon = delegate { };

    private void Awake()
    {
        turretLook.Init(transform, turret);
    }

    private void Update()
    {
        float yRot = CrossPlatformInputManager.GetAxis("Horizontal");
        float xRot = CrossPlatformInputManager.GetAxis("Vertical");
        GetButtonInput();

        turretLook.LookRotation(transform, turret, xRot, yRot);
    }

    void GetButtonInput()
    {
        if (CrossPlatformInputManager.GetButtonDown("Fire1"))
        {
            if (OnFire != null)OnFire();
        }

        if (CrossPlatformInputManager.GetButtonDown("Jump"))
        {
            if (OnSwitchWeapon != null)OnSwitchWeapon();
        }
    }

}