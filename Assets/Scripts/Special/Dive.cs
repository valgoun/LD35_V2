using UnityEngine;
using System.Collections;

public class Dive : Skill
{
    private Character m_chara;
    private Rigidbody m_body;
    private bool m_active;

    [SerializeField]
    private float m_force;
    [SerializeField]
    private float m_radius;
    [SerializeField]
    private float m_degats;

    // Use this for initialization
    void Start()
    {
        m_chara = GetComponent<Character>();
        m_body = GetComponent<Rigidbody>();
		enabled = false;
    }

    // Update is called once per frame
    void Update()
    {

    }

    void use()
    {
        Ray r = new Ray(transform.position, Vector3.down);
        RaycastHit hit;
        if (Physics.Raycast(r, out hit))
        {
            m_body.AddForce(Vector3.down * m_force * hit.distance, ForceMode.VelocityChange);
            m_active = true;
        }
    }

    public void OnCollisionEnter(Collision collision)
    {
        if (!m_active)
            return;
        m_active = false;
        Collider[] touches = Physics.OverlapSphere(collision.contacts[0].point, m_radius);
        foreach (Collider col in touches)
        {
            if (col.tag != "Ennemy")
                continue;
            col.GetComponent<Enemy>().DamageFromPlayer(m_degats);
        }
    }

	public override void setActive()
    {
        m_chara.m_special = use;
    }

}
