using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IDamage
{
    void OnTriggerEnter(Collider other);

    void OnHitEffect();
}
