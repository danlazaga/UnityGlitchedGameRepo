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
    }
#endregion

    void RotateTurret()
    {
        turretLook.LookRotation(transform, turret);
    }
}