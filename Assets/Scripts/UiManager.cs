using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using DG.Tweening;

public class UiManager : Singleton<UiManager>
{
    [SerializeField]
    private Image[] Morphs;
    [SerializeField]
    private Sprite[] ActiveSprites;
    [SerializeField]
    private Sprite[] Skills;
    [SerializeField]
    private GameObject SkillCircle;
    [SerializeField]
    private Text WaveIndicator, EnemyNumber;


    private int m_activeMorph = 0;
    private GameObject m_Stamina, m_Vie, m_skill;
    private Sprite[] oldSprite;
    // Use this for initialization
    void Start()
    {
        m_Stamina = SkillCircle.transform.GetChild(9).gameObject;
        m_Vie = SkillCircle.transform.GetChild(1).gameObject;
        m_skill = SkillCircle.transform.GetChild(7).gameObject;
        oldSprite = new Sprite[4];
        oldSprite[0] = Morphs[0].sprite;
        oldSprite[1] = Morphs[1].sprite;
        oldSprite[2] = Morphs[2].sprite;
        oldSprite[3] = Morphs[3].sprite;
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void morph(int i, float cooldown)
    {
        Morphs[m_activeMorph].sprite = oldSprite[m_activeMorph];
        m_activeMorph = i;
        Morphs[m_activeMorph].sprite = ActiveSprites[m_activeMorph];
        m_skill.GetComponent<Image>().sprite = Skills[m_activeMorph];
        for (int j = 0; j < 4; j++)
        {
            Morphs[j].transform.GetChild(0).GetComponent<Image>().fillAmount = 1;
            Morphs[j].transform.GetChild(0).GetComponent<Image>().DOFillAmount(0f, cooldown).SetEase(Ease.Linear);
        }
    }

    public void UpdateStamina(float value)
    {
        m_Stamina.GetComponent<Image>().fillAmount = value;
    }

    public void UpdateVie(float value)
    {
        m_Vie.GetComponent<Image>().DOKill();
        m_Vie.GetComponent<Image>().DOFillAmount(value, 0.2f).SetEase(Ease.InOutSine);
    }

    public void UseCapacity(float cooldown)
    {
        m_skill.transform.GetChild(0).GetComponent<Image>().fillAmount = 1;
        m_skill.transform.GetChild(0).GetComponent<Image>().DOFillAmount(0f, cooldown).SetEase(Ease.Linear);
    }

    public void UpdateWaveNumber(int waveNumber)
    {
        WaveIndicator.text = waveNumber.ToString();
    }

    public void UpdateEnemyNumber(int enemyNumber)
    {
        EnemyNumber.text = enemyNumber.ToString();
    }
}
