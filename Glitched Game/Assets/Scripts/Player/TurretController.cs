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
    public event Action onFire = delegate { };
    public event Action onSwitchWeaon = delegate { };
#endregion

#region Unity Methods
    void Awake()
    {
        turretLook.Init(transform, turret);
    }

    private void Start()
    {
        UpdateManager.Instance.toUpdate += HandleUpdate;
    }

    private void OnDestroy()
    {
        UpdateManager.Instance.toUpdate -= HandleUpdate;
    }

#endregion

    void HandleUpdate()
    {
        RotateTurret();
        InputButtons();
    }

    void RotateTurret()
    {
        turretLook.LookRotation(transform, turret);
    }

    void InputButtons()
    {
        if (CrossPlatformInputManager.GetButtonDown("Fire1"))
        {
            if (onFire != null)onFire();
        }

        if (CrossPlatformInputManager.GetButtonDown("Jump"))
        {
            if (onSwitchWeaon != null)onSwitchWeaon();
        }
    }
}