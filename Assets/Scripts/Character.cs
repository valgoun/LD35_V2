using UnityEngine;
using DG.Tweening;
using System.Collections;
using System;
using DarkTonic.MasterAudio;
using Colorful;

public class Character : MonoBehaviour
{
    #region SerializedVariables
    public float m_health = 100;
    public float m_armor;
    public float m_mouseSensibility = 2.0f;
    public float m_speed = 7.5f;
    public float m_straffSpeed = 5.0f;
    [Header("Attack")]
    public float m_attackCooldown = 1.0f;
    public float m_specialCooldown = 1.0f;
    [Header("Jump")]
    public float m_jumpForce = 5.0f;
    public LayerMask m_groundLayer;
    public float m_verticalDrag;
    [Header("Stamina")]
    public float m_staminaConsumption = 1.0f;
    public float m_staminaRegeneration = 1.0f;
    [Header("Sprint")]
    public float m_sprintSpeedModifier = 2.0f;
    public float m_sprintStraffModifier = 2.0f;
    public float m_sprintMouseModifier = 0.2f;
    [Header("Bobing")]
    public AnimationCurve m_bobingCurve;
    public AnimationCurve m_bobingRotationCurve;
    public float m_verticalAmplitude;
    public float m_angularAmplitude;
    public float m_bobingVerticalSpeed;
    public float m_bobingAngularSpeed;

    [Header("Screen Shake")]
    public float shakeDuration = 0.5f;
    public Vector3 shakeStrenth = new Vector3(1, 1, 0);
    public int shakeVibrato = 100;
    public float shakeRandomness = 45;
    [Header("Anim")]
    public Animator m_anim;
    #endregion


    private Rigidbody m_body;
    private bool m_grounded = true;
    private float m_stamina = 100f;
    private CapsuleCollider m_collider;
    private Tween m_bobing, m_rotationBobing;
    private Transform m_camera, m_rotationBobler;


    public Action m_attack, m_special;

    [Header("Sounds")]
    public float fadeTimeLoopSound;

    [Header("Death")]
    public float xRotation;
    public float yPosition;
    public float tweenDuration;
    public float fadeOutSoundsDuration;
    public float volumeFade = 0.1f;

	[Header("Lock Camera Rotation")]
	public float minXRotation = -85;
	public float maxXRotation = 85;

	private float xAngle;

    private bool jumpEndCoroutine;


    private float geantRunningVolume;
    private float sorcierRunningVolume;
    private float pbRunningVolume;
    private float ninjaRunningVolume;

    private float geantMovingVolume;
    private float sorcierMovingVolume;
    private float pbMovingVolume;
    private float ninjaMovingVolume;

    private bool sprinting = false;

    private float pbFlyVolume;

    private bool dead;

    public void Awake()
    {
        m_body = GetComponent<Rigidbody>();
        m_collider = GetComponent<CapsuleCollider>();
        m_rotationBobler = transform.GetChild(0);
        m_camera = m_rotationBobler.GetChild(0);

        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        geantRunningVolume = MasterAudio.GetGroupVolume("Geant_RUNNING");
        sorcierRunningVolume = MasterAudio.GetGroupVolume("Sorcier_RUNNING");
        pbRunningVolume = MasterAudio.GetGroupVolume("Pb_RUN");
        ninjaRunningVolume = MasterAudio.GetGroupVolume("Ninja_RUN");

        geantMovingVolume = MasterAudio.GetGroupVolume("Geant_MOVING");
        sorcierMovingVolume = MasterAudio.GetGroupVolume("Sorcier_MOVING");
        pbMovingVolume = MasterAudio.GetGroupVolume("Pb_MOVING");
        ninjaMovingVolume = MasterAudio.GetGroupVolume("Ninja_MOVING");

        pbFlyVolume = MasterAudio.GetGroupVolume("Pb_FLY");

    }

    // Use this for initialization
    void Start()
    {
        StartCoroutine(Attack());
        StartCoroutine(Special());

        MasterAudio.PlaySound("Pb_FLY");
        MasterAudio.FadeSoundGroupToVolume("Pb_FLY", 0, 0);


        MasterAudio.PlaySound("Geant_RUNNING");
        MasterAudio.PlaySound("Sorcier_RUNNING");
        MasterAudio.PlaySound("Pb_RUN");
        MasterAudio.PlaySound("Ninja_RUN");

        MasterAudio.FadeSoundGroupToVolume("Geant_RUNNING", 0, 0);
        MasterAudio.FadeSoundGroupToVolume("Sorcier_RUNNING", 0, 0);
        MasterAudio.FadeSoundGroupToVolume("Pb_RUN", 0, 0);
        MasterAudio.FadeSoundGroupToVolume("Ninja_RUN", 0, 0);


        MasterAudio.PlaySound("Geant_MOVING");
        MasterAudio.PlaySound("Sorcier_MOVING");
        MasterAudio.PlaySound("Pb_MOVING");
        MasterAudio.PlaySound("Ninja_MOVING");

        MasterAudio.FadeSoundGroupToVolume("Geant_MOVING", 0, 0);
        MasterAudio.FadeSoundGroupToVolume("Sorcier_MOVING", 0, 0);
        MasterAudio.FadeSoundGroupToVolume("Pb_MOVING", 0, 0);
        MasterAudio.FadeSoundGroupToVolume("Ninja_MOVING", 0, 0);

    }

    // Update is called once per frame
    void Update()
    {
        if (m_health <= 0.0f)
        {
            if (!dead)
            {
                dead = true;
                Debug.Log("TES MORT!!!");
                gameObject.GetComponent<Morphing>().enabled = false;
                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
                StopAllCoroutines();
                StartCoroutine(Death());
            }


            return;
        }

        //Camera X rotation
        //m_camera.Rotate(-Input.GetAxis("Mouse Y") * m_mouseSensibility, 0, 0, Space.Self);
		xAngle += Input.GetAxis ("Mouse Y") * m_mouseSensibility;
		xAngle = Mathf.Clamp (xAngle, minXRotation, maxXRotation);
		m_camera.transform.localEulerAngles = new Vector3 (-xAngle, m_camera.transform.localEulerAngles.y, m_camera.transform.localEulerAngles.z);

        //Camera Y rotation
        m_body.MoveRotation(Quaternion.Euler(transform.rotation.eulerAngles + new Vector3(0, Input.GetAxis("Mouse X") * m_mouseSensibility, 0)));
        //Character Normal moves
        m_body.MovePosition(m_body.position + transform.forward * Time.deltaTime * Input.GetAxis("Vertical") * m_speed +
            transform.right * Time.deltaTime * Input.GetAxis("Horizontal") * m_straffSpeed);
        //Ground check
        m_grounded = Physics.CheckSphere(transform.position + Vector3.down * (m_collider.height / 2 - m_collider.radius), m_collider.radius + 0.1f, m_groundLayer);
        //Jump
        if (Input.GetButtonDown("Jump") && m_grounded)
        {
            m_body.AddForce(Vector3.up * m_jumpForce, ForceMode.VelocityChange);

            switch (Morphing.IndexForm)
            {
                case 0:
                    MasterAudio.PlaySound("Geant_START JUMP");
                    break;
                case 1:
                    MasterAudio.PlaySound("Sorcier_STARTJUMP");
                    break;
                case 2:
                    MasterAudio.PlaySound("Pb_STARTJUMP");
                    break;
                case 3:
                    MasterAudio.PlaySound("Sorcier_STARTJUMP", pitch: 0.9f);
                    break;
            }

        }

        if (m_verticalDrag != 0 && !m_grounded)
        {
            m_body.AddForce(Vector3.up * m_verticalDrag, ForceMode.Acceleration);
        }

        if (Input.GetButtonDown("Sprint"))
            StartCoroutine(Sprint());
        else if (m_stamina < 100f && !Input.GetButton("Sprint"))
        {
            m_stamina = Mathf.Clamp(m_stamina + m_staminaRegeneration * Time.deltaTime, 0, 100f);
            UiManager.Instance.UpdateStamina(m_stamina / 100f);
        }

        if (Input.GetButtonDown("Vertical"))
        {
            m_bobing = m_camera.DOLocalMoveY(m_verticalAmplitude, 1f / m_bobingVerticalSpeed).SetLoops(-1, LoopType.Restart).SetRelative().SetEase(m_bobingCurve);
            m_rotationBobing = m_rotationBobler.DOLocalRotate(new Vector3(0, 0, m_angularAmplitude), 1f / m_bobingAngularSpeed).SetRelative().SetLoops(-1, LoopType.Restart).SetEase(m_bobingRotationCurve);
        }
        if (Input.GetButtonUp("Vertical"))
        {
            m_bobing.Kill();
            m_bobing = m_camera.DOLocalMoveY(0.8f, Mathf.Abs(transform.GetChild(0).localPosition.y - 0.8f) / (m_bobingVerticalSpeed * m_verticalAmplitude));
            m_rotationBobing.Kill();
            m_rotationBobing = m_rotationBobler.DOLocalRotate(new Vector3(0, 0, 0), Mathf.Abs(m_rotationBobler.localRotation.z) / (m_bobingAngularSpeed * m_angularAmplitude));
        }

        if (!m_grounded && !jumpEndCoroutine)
            StartCoroutine(JumpEnd());



        MovingSounds();

    }

    IEnumerator Death()
    {
        Vector3 v3 = new Vector3(xRotation, transform.rotation.y, transform.rotation.z);

        transform.DORotate(v3, tweenDuration);
        transform.DOMoveY(yPosition, tweenDuration);

        MasterAudio.FadeAllPlaylistsToVolume(volumeFade, fadeOutSoundsDuration);
        DOTween.To(() => MasterAudio.MasterVolumeLevel, x => MasterAudio.MasterVolumeLevel = x, volumeFade, fadeOutSoundsDuration);

        UiManager.Instance.GameOver(m_camera.gameObject);

        yield return null;
    }

    void MovingSounds()
    {
        Vector3 v3 = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical")).normalized;

        switch (Morphing.IndexForm)
        {
            case 0:
                MasterAudio.FadeSoundGroupToVolume("Sorcier_MOVING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Pb_MOVING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Ninja_MOVING", 0, fadeTimeLoopSound);

                MasterAudio.FadeSoundGroupToVolume("Sorcier_RUNNING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Pb_RUN", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Ninja_RUN", 0, fadeTimeLoopSound);
                break;
            case 1:
                MasterAudio.FadeSoundGroupToVolume("Geant_MOVING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Pb_MOVING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Ninja_MOVING", 0, fadeTimeLoopSound);

                MasterAudio.FadeSoundGroupToVolume("Geant_RUNNING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Pb_RUN", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Ninja_RUN", 0, fadeTimeLoopSound);
                break;
            case 2:
                MasterAudio.FadeSoundGroupToVolume("Geant_MOVING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Sorcier_MOVING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Ninja_MOVING", 0, fadeTimeLoopSound);

                MasterAudio.FadeSoundGroupToVolume("Geant_RUNNING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Sorcier_RUNNING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Ninja_RUN", 0, fadeTimeLoopSound);
                break;
            case 3:
                MasterAudio.FadeSoundGroupToVolume("Geant_MOVING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Sorcier_MOVING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Pb_MOVING", 0, fadeTimeLoopSound);

                MasterAudio.FadeSoundGroupToVolume("Geant_RUNNING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Sorcier_RUNNING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Pb_RUN", 0, fadeTimeLoopSound);
                break;
        }


        if (Morphing.IndexForm == 2 && !m_grounded)
        {
            MasterAudio.FadeSoundGroupToVolume("Pb_FLY", pbFlyVolume, fadeTimeLoopSound);
        }
        else
        {
            MasterAudio.FadeSoundGroupToVolume("Pb_FLY", 0, fadeTimeLoopSound);
        }


        if (!sprinting && v3.sqrMagnitude != 0)
        {
            switch (Morphing.IndexForm)
            {
                case 0:
                    if (MasterAudio.GetGroupVolume("Geant_MOVING") == 0)
                        MasterAudio.FadeSoundGroupToVolume("Geant_MOVING", geantMovingVolume, fadeTimeLoopSound);
                    //Debug.Log("Geant Moving");
                    break;
                case 1:
                    if (MasterAudio.GetGroupVolume("Sorcier_MOVING") == 0)
                        MasterAudio.FadeSoundGroupToVolume("Sorcier_MOVING", sorcierMovingVolume, fadeTimeLoopSound);
                    //Debug.Log("Sorcier Moving");
                    break;
                case 2:
                    if (MasterAudio.GetGroupVolume("Pb_MOVING") == 0)
                        MasterAudio.FadeSoundGroupToVolume("Pb_MOVING", pbMovingVolume, fadeTimeLoopSound);
                    //Debug.Log("Pb Moving");
                    break;
                case 3:
                    if (MasterAudio.GetGroupVolume("Ninja_MOVING") == 0)
                        MasterAudio.FadeSoundGroupToVolume("Ninja_MOVING", ninjaMovingVolume, fadeTimeLoopSound);
                    //Debug.Log("Ninja Moving");
                    break;
            }
        }

        if (!sprinting && v3.sqrMagnitude < 0.01f)
        {
            switch (Morphing.IndexForm)
            {
                case 0:
                    if (MasterAudio.GetGroupVolume("Geant_MOVING") != 0)
                        MasterAudio.FadeSoundGroupToVolume("Geant_MOVING", 0, fadeTimeLoopSound);
                    //Debug.Log("Geant Stopped");
                    break;
                case 1:
                    if (MasterAudio.GetGroupVolume("Sorcier_MOVING") != 0)
                        MasterAudio.FadeSoundGroupToVolume("Sorcier_MOVING", 0, fadeTimeLoopSound);
                    //Debug.Log("Sorcier Stopped");
                    break;
                case 2:
                    if (MasterAudio.GetGroupVolume("Pb_MOVING") != 0)
                        MasterAudio.FadeSoundGroupToVolume("Pb_MOVING", 0, fadeTimeLoopSound);
                    //Debug.Log("Pb Stopped");
                    break;
                case 3:
                    if (MasterAudio.GetGroupVolume("Ninja_MOVING") != 0)
                        MasterAudio.FadeSoundGroupToVolume("Ninja_MOVING", 0, fadeTimeLoopSound);
                    //Debug.Log("Ninja Stopped");
                    break;
            }
        }
    }


    IEnumerator Sprint()
    {
        sprinting = true;

        switch (Morphing.IndexForm)
        {
            case 0:
                MasterAudio.FadeSoundGroupToVolume("Geant_RUNNING", geantRunningVolume, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Geant_MOVING", 0, fadeTimeLoopSound);
                break;
            case 1:
                MasterAudio.FadeSoundGroupToVolume("Sorcier_RUNNING", sorcierRunningVolume, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Sorcier_MOVING", 0, fadeTimeLoopSound);
                break;
            case 2:
                MasterAudio.FadeSoundGroupToVolume("Pb_RUN", pbRunningVolume, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Pb_MOVING", 0, fadeTimeLoopSound);
                break;
            case 3:
                MasterAudio.FadeSoundGroupToVolume("Ninja_RUN", ninjaRunningVolume, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Ninja_MOVING", 0, fadeTimeLoopSound);
                break;
        }

        //Debug.Log("Sprint Start");
        m_speed *= m_sprintSpeedModifier;
        m_straffSpeed *= m_sprintStraffModifier;
        m_mouseSensibility *= m_sprintMouseModifier;
        var RB = m_camera.GetComponent<RadialBlur>();
        while (Input.GetButton("Sprint"))
        {

            if (Input.GetButton("Vertical"))
            {
                m_stamina -= m_staminaConsumption * Time.deltaTime;
                RB.Strength = 0.34f;
                UiManager.Instance.UpdateStamina(m_stamina / 100f);
            }
            else
            {
                RB.Strength = 0.0f;
            }
            if (m_stamina <= 0.0f)
            {
                m_stamina = 0.0f;

                StaminaSound();

                break;
            }
            yield return new WaitForEndOfFrame();
        }
        RB.Strength = 0.0f;
        m_speed /= m_sprintSpeedModifier;
        m_straffSpeed /= m_sprintStraffModifier;
        m_mouseSensibility /= m_sprintMouseModifier;
        // Debug.Log("Sprint End");

        switch (Morphing.IndexForm)
        {
            case 0:
                MasterAudio.FadeSoundGroupToVolume("Geant_RUNNING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Geant_MOVING", geantMovingVolume, fadeTimeLoopSound);
                break;
            case 1:
                MasterAudio.FadeSoundGroupToVolume("Sorcier_RUNNING", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Sorcier_MOVING", sorcierMovingVolume, fadeTimeLoopSound);
                break;
            case 2:
                MasterAudio.FadeSoundGroupToVolume("Pb_RUN", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Pb_MOVING", pbMovingVolume, fadeTimeLoopSound);
                break;
            case 3:
                MasterAudio.FadeSoundGroupToVolume("Ninja_RUN", 0, fadeTimeLoopSound);
                MasterAudio.FadeSoundGroupToVolume("Ninja_MOVING", ninjaMovingVolume, fadeTimeLoopSound);
                break;
        }

        sprinting = false;
    }

    void StaminaSound()
    {
        switch (Morphing.IndexForm)
        {
            case 0:
                MasterAudio.PlaySound("Geant_HEAVYBREATH");
                break;
            case 1:
                MasterAudio.PlaySound("Sorcier_HEAVYBREATH");
                break;
            case 2:
                MasterAudio.PlaySound("Pb_HEAVYBREATH");
                break;
            case 3:
                MasterAudio.PlaySound("Ninja_ESSOUFLEE");
                break;
        }

    }

    IEnumerator Attack()
    {
        while (true)
        {
            if (Input.GetButton("Attack"))
            {
                // Debug.Log("A l'attaque");
                if (m_attack != null)
                    m_attack();
                m_anim.SetTrigger("Attack");
                yield return new WaitForSeconds(m_attackCooldown);
            }
            yield return null;
        }
    }

    IEnumerator Special()
    {
        while (true)
        {
            if (Input.GetButton("Special"))
            {
                if (m_special != null)
                    m_special();
                m_anim.SetTrigger("Special");
                UiManager.Instance.UseCapacity(m_specialCooldown);
                yield return new WaitForSeconds(m_specialCooldown);
            }
            yield return null;
        }
    }

    public void Damages(float damage, Vector3 enemyTransform)
    {
		//Debug.Log(damage);
        m_health -= (damage - m_armor);
        //PushBack (enemyTransform);
        UiManager.Instance.UpdateVie(m_health / 100f);
        var DV = m_camera.GetComponent<DoubleVision>();
        var FV = m_camera.GetComponent<FastVignette>();
        FV.Mode = FastVignette.ColorMode.Colored;

        DOTween.To(() => FV.Darkness, x => FV.Darkness = x, 38, 0.2f).OnComplete(() =>
        {
            FV.Mode = FastVignette.ColorMode.Classic;
            FV.Darkness = 24.5f;
        });

        DOTween.Shake(() =>
        {
            return new Vector3(DV.Displace.x, DV.Displace.y, 0);
        }, x =>
        {
            DV.Displace = new Vector2(x.x, x.y);
        }, 0.2f, new Vector3(5, 5, 5), 10, 0);

        DOTween.To(() => DV.Amount, x => DV.Amount = x, 1, 0.1f).OnComplete(() =>
        {
            DOTween.To(() => DV.Amount, x => DV.Amount = x, 0, 0.1f);
        });


        HitSound();
        CameraShaking();
    }

    public void Damages(float damage)
    {
		//Debug.Log(damage);

        m_health -= Mathf.Clamp(damage - m_armor, 0, 100);
        UiManager.Instance.UpdateVie(m_health / 100f);
		var DV = m_camera.GetComponent<DoubleVision>();
		var FV = m_camera.GetComponent<FastVignette>();
		FV.Mode = FastVignette.ColorMode.Colored;

		DOTween.To(() => FV.Darkness, x => FV.Darkness = x, 38, 0.2f).OnComplete(() =>
			{
				FV.Mode = FastVignette.ColorMode.Classic;
				FV.Darkness = 24.5f;
			});

		DOTween.Shake(() =>
			{
				return new Vector3(DV.Displace.x, DV.Displace.y, 0);
			}, x =>
			{
				DV.Displace = new Vector2(x.x, x.y);
			}, 0.2f, new Vector3(5, 5, 5), 10, 0);

		DOTween.To(() => DV.Amount, x => DV.Amount = x, 1, 0.1f).OnComplete(() =>
			{
				DOTween.To(() => DV.Amount, x => DV.Amount = x, 0, 0.1f);
			});
		
        HitSound();
        CameraShaking();
    }

    void HitSound()
    {
        switch (Morphing.IndexForm)
        {
            case 0:
                MasterAudio.PlaySound("Geant_HIT");
                break;
            case 1:
                MasterAudio.PlaySound("Sorcier_HIT");
                break;
            case 2:
                MasterAudio.PlaySound("Pb_HIT");
                break;
            case 3:
                MasterAudio.PlaySound("Ninja_HIT");
                break;
        }
    }

    void CameraShaking()
    {
        m_camera.transform.DOShakePosition(shakeDuration, shakeStrenth, shakeVibrato, shakeRandomness);
    }

    void PushBack(Vector3 enemyPosition)
    {
        Vector3 v3 = (transform.position - enemyPosition);
        v3.y = transform.position.y;

        m_body.AddForce(v3 * 5, ForceMode.VelocityChange);

        Debug.Log("pushback");
    }

    public void Copy(CharacterData other)
    {
        m_armor = other.m_armor;
        m_mouseSensibility = other.m_mouseSensibility;
        m_speed = other.m_speed;
        m_straffSpeed = other.m_straffSpeed;
        m_attackCooldown = other.m_attackCooldown;
        m_specialCooldown = other.m_specialCooldown;
        m_jumpForce = other.m_jumpForce;
        m_groundLayer = other.m_groundLayer;
        m_verticalDrag = other.m_verticalDrag;
        m_staminaConsumption = other.m_staminaConsumption;
        m_sprintSpeedModifier = other.m_sprintSpeedModifier;
        m_sprintStraffModifier = other.m_sprintStraffModifier;
        m_sprintMouseModifier = other.m_sprintMouseModifier;
        m_bobingCurve = other.m_bobingCurve;
        m_bobingRotationCurve = other.m_bobingRotationCurve;
        m_verticalAmplitude = other.m_verticalAmplitude;
        m_angularAmplitude = other.m_angularAmplitude;
        m_bobingVerticalSpeed = other.m_bobingVerticalSpeed;
        m_bobingAngularSpeed = other.m_bobingAngularSpeed;
        shakeDuration = other.shakeDuration;
        shakeStrenth = other.shakeStrenth;
        shakeVibrato = other.shakeVibrato;
        shakeRandomness = other.shakeRandomness;
    }

    IEnumerator JumpEnd()
    {
        jumpEndCoroutine = true;

        while (!m_grounded)
        {
            yield return 0;

            /*if(m_grounded)
			{
				switch (Morphing.IndexForm)
				{
				case 0:
					MasterAudio.PlaySound("Geant_END JUMP");
					break;
				case 1:
					MasterAudio.PlaySound("Sorcier_ENDJUMP");
					break;
				case 2:
					MasterAudio.PlaySound("Pb_ENDJUMP");
					break;
				case 3:
					MasterAudio.PlaySound("Ninja_ENDJUMP");
					break;
				}

				//Debug.Log("jumpEnd");
				jumpEndCoroutine = false;
			}*/
        }

        yield return null;
    }

}
