using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

[Serializable]
public class Wave
{
    public List<WaveData> m_data;
}

[Serializable]
public class WaveData
{
    public Transform spwanPoint;
    public int ressourcePoint;
    public List<Enemy> unitsPrefab;
    public float timeBetweenSpwan;
    public float timeModifier;
    public float initialDelay;
    public int spwanSize;
    public int spwanSizeModifier;
    public bool isOver = false;
}

public class MobSpwaner : Singleton<MobSpwaner>
{
    [SerializeField]
    private List<Wave> m_waves;
    [SerializeField]
    private LayerMask m_ennemyLayer;


    private int m_waveIndex;
    private bool m_waveSpawned = false;
    private List<GameObject> m_enemies;
    // Use this for initialization
    void Start()
    {
        m_waveIndex = 0;
        GoToNextWave();
        m_enemies = new List<GameObject>();
    }

    // Update is called once per frame
    void Update()
    {

    }

    void GoToNextWave()
    {
        m_waveSpawned = false;
        SpwanWave(m_waves[Mathf.Clamp(m_waveIndex, 0, m_waves.Count - 1)]);
        m_waveIndex++;
        UiManager.Instance.UpdateWaveNumber(m_waveIndex);
    }

    private void SpwanWave(Wave wave)
    {
        for (int i = 0; i < wave.m_data.Count; i++)
        {
            StartCoroutine(SpwanWave(wave.m_data[i]));
        }
        StartCoroutine(CheckEndWave(wave));
    }

    IEnumerator CheckEndWave(Wave wave)
    {

        while (m_waveSpawned == false)
        {
            yield return null;
            m_waveSpawned = true;
            foreach (WaveData w in wave.m_data)
            {
                if (!w.isOver)
                    m_waveSpawned = false;
            }
        }
		yield return new WaitUntil(() =>
        {
            return m_enemies.Count == 0;
        });
        GoToNextWave();
    }

    IEnumerator SpwanWave(WaveData data)
    {
        yield return new WaitForSeconds(data.initialDelay);
        while (data.ressourcePoint > 0)
        {
            int wavesize = UnityEngine.Random.Range(data.spwanSize - data.spwanSizeModifier, data.spwanSize + data.spwanSizeModifier);
            for (int i = 0; i < wavesize; i++)
            {
                List<Enemy> candidates = new List<Enemy>();
                foreach (Enemy en in data.unitsPrefab)
                {
                    if (en.cost <= data.ressourcePoint)
                        candidates.Add(en);
                }
                if (candidates.Count == 0)
                {
                    data.isOver = true;
                    break;
                }
                int index = UnityEngine.Random.Range(0, candidates.Count);
                m_enemies.Add(Instantiate(candidates[index].gameObject, data.spwanPoint.position, Quaternion.identity) as GameObject);
                UiManager.Instance.UpdateEnemyNumber(m_enemies.Count);
                data.ressourcePoint -= candidates[index].cost;
                yield return new WaitWhile(() =>
                {
                    return Physics.CheckSphere(data.spwanPoint.position, 2, m_ennemyLayer);
                });
                if (data.ressourcePoint <= 0)
                {
                    break;
                }
            }
            yield return new WaitForSeconds(UnityEngine.Random.Range(data.timeBetweenSpwan - data.timeModifier, data.timeBetweenSpwan + data.timeModifier));
        }
        data.isOver = true;
    }

    public void Remove(GameObject enemy)
    {
        m_enemies.Remove(enemy);
        UiManager.Instance.UpdateEnemyNumber(m_enemies.Count);
    }
}
