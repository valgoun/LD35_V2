using UnityEngine;
using System.Collections;

public class Grenade : Skill
{
    private Character m_chara;
    [SerializeField]
    private float m_force;
    [SerializeField]
    private float m_radius;
    [SerializeField]
    private float m_degats;
    [SerializeField]
    private GameObject m_grenade;

    // Use this for initialization
    void Start()
    {
        m_chara = GetComponent<Character>();
		enabled = false;
    }

    // Update is called once per frame
    void Update()
    {

    }

    void use()
    {
        GameObject gre = Instantiate(m_grenade, transform.position, Quaternion.identity) as GameObject;
        gre.GetComponent<Rigidbody>().AddForce((transform.GetChild(0).GetChild(0).forward + Vector3.up / 2).normalized * m_force, ForceMode.VelocityChange);
        gre.GetComponent<GrenadeObject>().m_degats = m_degats;
        gre.GetComponent<GrenadeObject>().m_radius = m_radius;
    }

	public override void setActive()
    {
        m_chara.m_special = use;
    }
}
