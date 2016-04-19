using UnityEngine;
using System.Collections;

public class Block : Enemy
{
    [Header("BLOCK")]
    public float blockDistance;
    public float minAngleToDamage = 45f;
    public float straffDistance;

    private bool m_isBlocking;
    private Animator m_anim;
    private float m_straffDirection = 1.0f;

    // Use this for initialization
    new void Start()
    {
        base.Start();
        enemyAI.WorkingMemory.SetItem("Counter", false);
        m_anim = GetComponent<Animator>();
        StartCoroutine(ChangeDirection());
    }

    // Update is called once per frame
    new void Update()
    {
        base.Update();


        m_isBlocking = distanceFromPlayer <= blockDistance;
        enemyAI.WorkingMemory.SetItem("isBlocking", m_isBlocking);
        enemyAI.WorkingMemory.SetItem("isStraffing", distanceFromPlayer <= straffDistance);
        enemyAI.WorkingMemory.SetItem("StraffPosition", transform.position + transform.right * m_straffDirection);
    }

    public override void DamageFromPlayer(float damage)
    {
       // Debug.Log(Vector3.Angle(transform.forward, player.position - transform.position));

        if (!m_isBlocking)
            base.DamageFromPlayer(damage);
        else if (Vector3.Angle(transform.forward, player.position - transform.position) > minAngleToDamage)
            base.DamageFromPlayer(damage);
        else
        {
            enemyAI.WorkingMemory.SetItem("Counter", true);
            enemyAI.WorkingMemory.SetItem("Once", true);
        }
    }

    IEnumerator ChangeDirection()
    {
        while (true)
        {
            yield return new WaitForSeconds(3 * UnityEngine.Random.Range(0f, 2f));
            m_straffDirection *= -1;
            m_anim.SetFloat("Direction", m_straffDirection);
        }
    }
}
