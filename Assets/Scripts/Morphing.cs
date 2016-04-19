using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using DarkTonic.MasterAudio;

[System.Serializable]
public class Morph
{
    public CharacterData Data;
    public float size;
    public Skill Attack;
    public Skill Spe;
}

public class Morphing : MonoBehaviour
{
    public List<Morph> forms;

    private Character m_char;
    private CapsuleCollider m_col;
    private int m_level = 3;
    private Skill old_att, old_spe;
    public Animator m_anim;
	public static int IndexForm;

    // Use this for initialization
    void Start()
    {
        m_char = GetComponent<Character>();
        m_col = GetComponent<CapsuleCollider>();

		MorphTo(0);
		m_anim.SetBool("Geant", true);
		m_anim.SetBool("Shaman", false);
		m_anim.SetBool("Diablotin", false);
		m_anim.SetBool("Ninja", false);
		IndexForm = 0;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            MorphTo(0);
            m_anim.SetBool("Geant", true);
            m_anim.SetBool("Shaman", false);
            m_anim.SetBool("Diablotin", false);
            m_anim.SetBool("Ninja", false);
			IndexForm = 0;
        }
        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            MorphTo(1);
            m_anim.SetBool("Geant", false);
            m_anim.SetBool("Shaman", true);
            m_anim.SetBool("Diablotin", false);
            m_anim.SetBool("Ninja", false);
			IndexForm = 1;
        }
        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            MorphTo(2);
            m_anim.SetBool("Geant", false);
            m_anim.SetBool("Shaman", false);
            m_anim.SetBool("Diablotin", true);
            m_anim.SetBool("Ninja", false);
			IndexForm = 2;
        }
        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            MorphTo(3);
            m_anim.SetBool("Geant", false);
            m_anim.SetBool("Shaman", false);
            m_anim.SetBool("Diablotin", false);
            m_anim.SetBool("Ninja", true);
			IndexForm = 3; 
        }
    }

    void MorphTo(int index)
    {
        if (index >= forms.Count || index > m_level)
            return;

        UiManager.Instance.morph(index, 0.5f);
        if (old_att != null)
        {
            old_att.enabled = false;
            old_spe.enabled = false;
        }
        m_char.Copy(forms[index].Data);
        m_col.height = forms[index].size;
        forms[index].Attack.enabled = true;
        forms[index].Attack.setActive();
        old_att = forms[index].Attack;
        forms[index].Spe.enabled = true;
        forms[index].Spe.setActive();
        old_spe = forms[index].Spe;

		MasterAudio.PlaySound("Shapeshift");
    }

    void LevelUp()
    {
        m_level++;
    }
}
