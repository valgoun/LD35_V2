using UnityEngine;
using System.Collections;
using System;

public class Estoc : Skill
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

    // Update is called once per frame
    void Update()
    {

    }

	public override void setActive()
    {
        m_chara.m_attack = use;
    }
}
