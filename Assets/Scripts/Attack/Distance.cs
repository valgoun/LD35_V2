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
    [SerializeField]
    private Transform m_spawnPoint;
    [SerializeField]
    private float m_maxDistance;

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
        Ray r = new Ray(m_camera.position, m_camera.forward);
        RaycastHit hit;
        GameObject bul;
        if (Physics.Raycast(r, out hit, m_maxDistance))
        {
            bul = Instantiate(m_Bullet, m_spawnPoint.position, Quaternion.identity) as GameObject;
            bul.transform.LookAt(hit.point);
        }
        else
        {
            bul = Instantiate(m_Bullet, m_spawnPoint.position, Quaternion.identity) as GameObject;
            bul.transform.LookAt(m_camera.position + m_camera.forward * m_maxDistance);
        }
        bul.GetComponent<Bullet>().m_speed = m_speed;
        bul.GetComponent<Bullet>().m_damage = m_damages;
    }

    public override void setActive()
    {
        Debug.Log("Je suis un sorcier");
        m_chara.m_attack = use;
    }
}
