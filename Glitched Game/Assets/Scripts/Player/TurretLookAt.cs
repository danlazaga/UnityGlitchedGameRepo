using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

[System.Serializable]
public class TurretLookAt
{
	public float XSensitivity = 2f;
	public float YSensitivity = 2f;
	public float xMinRot;
	public float xMaxRot;
	Quaternion baseRot;
	Quaternion turretTargetRot;

	public void Init(Transform baseTurret, Transform turret)
	{
		baseRot = baseTurret.localRotation;
		turretTargetRot = turret.localRotation;
	}

	public void LookRotation(Transform baseTurret, Transform turret)
	{
		float yRot = CrossPlatformInputManager.GetAxis("HorizontalM")* YSensitivity;
		float xRot = CrossPlatformInputManager.GetAxis("VerticalM")* XSensitivity;

		baseRot *= Quaternion.Euler(0f, yRot, 0f);
		turretTargetRot *= Quaternion.Euler(-xRot, 0, 0f);

		turretTargetRot = ClampRotationAroundXAxis(turretTargetRot);

		baseTurret.localRotation = baseRot;
		turret.localRotation = turretTargetRot;
	}

	Quaternion ClampRotationAroundXAxis(Quaternion q)
	{
		q.x /= q.w;
		q.y /= q.w;
		q.z /= q.w;
		q.w = 1.0f;

		float angleX = 2.0f * Mathf.Rad2Deg * Mathf.Atan(q.x);

		angleX = Mathf.Clamp(angleX, xMinRot, xMaxRot);

		q.x = Mathf.Tan(0.5f * Mathf.Deg2Rad * angleX);

		return q;
	}

}