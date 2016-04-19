using UnityEngine;
using System.Collections;

public class Cac : Skill
{
    private Character m_chara;
    [SerializeField]
    private GameObject m_trigger;
    [SerializeField]
    private float m_degats;
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
        m_trigger.SetActive(true);

        StartCoroutine(attack());
    }

    IEnumerator attack()
    {
        yield return new WaitForSeconds(0.2f);
        m_trigger.SetActive(false);
    }

    public void OnTriggerEnter(Collider other)
    {
		if (other.tag == "Ennemy" && enabled)
        {
            other.GetComponent<Enemy>().DamageFromPlayer(m_degats);
        }
    }

    public override void setActive()
    {
        m_chara.m_attack = use;
    }
}
