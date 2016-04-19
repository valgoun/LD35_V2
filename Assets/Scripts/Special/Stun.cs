using UnityEngine;
using System.Collections;
using System;

public class Stun : Skill
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
        //throw new NotImplementedException();
    }

    // Update is called once per frame
    void Update()
    {

    }

    public override void setActive()
    {
        m_chara.m_special = use;
    }
}
