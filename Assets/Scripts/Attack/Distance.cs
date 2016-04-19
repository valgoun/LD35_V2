using UnityEngine;
using System.Collections;

public class Distance : Skill
{
    private Character m_chara;
    [SerializeField]
    private GameObject m_Bullet;
    [SerializeField]
    private float m_speed;
    [SerializeField]
    private float m_damages;

    private Transform m_camera;

    // Use this for initialization
    void Start()
    {
        m_chara = GetComponent<Character>();
        m_camera = transform.GetChild(0).GetChild(0);
		enabled = false;

    }

    // Update is called once per frame
    void Update()
    {

    }

    void use()
    {
        GameObject bul = Instantiate(m_Bullet, m_camera.position, Quaternion.LookRotation(m_camera.forward, m_camera.up)) as GameObject;
        bul.GetComponent<Bullet>().m_speed = m_speed;
        bul.GetComponent<Bullet>().m_damage = m_damages;
    }

	public override void setActive()
    {
		Debug.Log ("Je suis un sorcier");
        m_chara.m_attack = use;
    }
}
