using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

public class TurretController : MonoBehaviour
{
#region Variables
    [SerializeField] Transform turret;
    [Space(10)]
    [SerializeField] TurretLookAt turretLook;
    public event Action OnFire = delegate { };
    public event Action OnSwitchWeapon = delegate { };
#endregion

#region Unity Methods
    void Awake()
    {
        turretLook.Init(transform, turret);
    }

    void Start()
    {
        PlayerHUD.Instance.Initialize();
    }

    void Update()
    {
        RotateTurret();
        GetButtonInput();
    }
#endregion

    void RotateTurret()
    {
        turretLook.LookRotation(transform, turret);
    }

    void GetButtonInput()
    {
        if (CrossPlatformInputManager.GetButtonDown("Fire1"))
        { 
            if(OnFire != null) OnFire();
        }

        if (CrossPlatformInputManager.GetButtonDown("Jump"))
        {
            if (OnSwitchWeapon != null)OnSwitchWeapon();
        }
    }

}