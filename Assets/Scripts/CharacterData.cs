using UnityEngine;
using System.Collections;

public class CharacterData : MonoBehaviour
{
    public float m_health;
    public float m_armor;
    public float m_mouseSensibility;
    public float m_speed;
    public float m_straffSpeed;
    [Header("Attack")]
    public float m_attackCooldown;
    public float m_specialCooldown;
    [Header("Jump")]
    public float m_jumpForce;
    public LayerMask m_groundLayer;
    public float m_verticalDrag;
    [Header("Stamina")]
    public float m_staminaConsumption;
    public float m_staminaRegeneration;
    [Header("Sprint")]
    public float m_sprintSpeedModifier;
    public float m_sprintStraffModifier;
    public float m_sprintMouseModifier;
    [Header("Bobing")]
    public AnimationCurve m_bobingCurve;
    public AnimationCurve m_bobingRotationCurve;
    public float m_verticalAmplitude;
    public float m_angularAmplitude;
    public float m_bobingVerticalSpeed;
    public float m_bobingAngularSpeed;

    [Header("Screen Shake")]
    public float shakeDuration;
    public Vector3 shakeStrenth;
    public int shakeVibrato;
    public float shakeRandomness;
}
