using UnityEngine;
using System.Collections;
using System;
using DG.Tweening;

public class Tp : Skill
{
    private Character m_chara;

    // Use this for initialization
    void Start()
    {
        m_chara = GetComponent<Character>();
		enabled = false;
    }

    private void use()
    {
        Ray r = new Ray(transform.GetChild(0).GetChild(0).position, transform.GetChild(0).GetChild(0).forward);
        Debug.DrawLine(r.origin, r.origin + r.direction * 15f, Color.green, 5f);
        RaycastHit hit;
        if (Physics.Raycast(r, out hit))
        {
            if (hit.collider.tag == "Ennemy")
            {
                GetComponent<Rigidbody>().DOMove(hit.collider.transform.position, 0.5f);
            }
        }
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void setActive()
    {
        m_chara.m_special = use;
    }
}
