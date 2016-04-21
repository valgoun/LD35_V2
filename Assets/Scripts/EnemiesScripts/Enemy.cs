using UnityEngine;
using System.Collections;
using RAIN.Core;
using DG.Tweening;
using DarkTonic.MasterAudio;

public class Enemy : MonoBehaviour
{
    public int cost;
    public Transform model;
    [Header("Health")]
    public float health = 100;
    public float armor;
    public float timeBeforeDeath = 2;

    [Header("Damages")]
    public float damageToPlayer;
    public MeshCollider attackCollider;
    public Collider attackCollider2;

    [Header("Speed")]
    public float moveSpeed = 5;
    public float turnSpeed = 200;

    /*[Header ("Sprint")]
    public float sprintMultiplicator;
    [Range (0, 100)]
    public int sprintChance;
    public float sprintDuration;*/

    [Header("Distances")]
    public float distanceSightEnemy = 50;
    public float distanceFromPlayer;
    public float closeEnoughDistance = 1.5f;
    public float maxDistanceToAttack;

    protected Transform player;

    protected AI enemyAI;

    protected bool sprinting;

    // Use this for initialization
    protected void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;

        enemyAI = transform.GetChild(0).GetComponent<AIRig>().AI;
        enemyAI.WorkingMemory.SetItem("moveSpeed", moveSpeed);
        enemyAI.WorkingMemory.SetItem("turnSpeed", turnSpeed);
        enemyAI.WorkingMemory.SetItem("closeEnoughDistance", closeEnoughDistance);
        enemyAI.WorkingMemory.SetItem("health", health);
        enemyAI.WorkingMemory.SetItem("timeBeforeDeath", timeBeforeDeath);
        model.GetComponent<Renderer>().material.EnableKeyword("_EMISSION");
    }

    // Update is called once per frame
    protected void Update()
    {
        enemyAI.WorkingMemory.SetItem("playerPosition", player.position);
        enemyAI.WorkingMemory.SetItem("enemyPosition", transform.position);

        distanceFromPlayer = Vector3.Distance(transform.position, player.position);

        CanAttack();

        EnemySight();
    }

    void EnemySight()
    {
        if (distanceFromPlayer > distanceSightEnemy)
            enemyAI.WorkingMemory.SetItem("seeingPlayer", false);
        else
            enemyAI.WorkingMemory.SetItem("seeingPlayer", true);
    }

    void CanAttack()
    {
        if (distanceFromPlayer < maxDistanceToAttack)
            enemyAI.WorkingMemory.SetItem("canAttack", true);
        else
            enemyAI.WorkingMemory.SetItem("canAttack", false);
    }

    public virtual void DamageFromPlayer(float damage)
    {
        if (health > 0.0f)
        {
            health -= (damage - armor);
            enemyAI.WorkingMemory.SetItem("health", health);
            var rend = model.GetComponent<Renderer>();
            rend.material.DOKill();
            rend.material.DOColor(Color.white, "_EmissionColor", 0.1f).OnComplete(() => rend.material.DOColor(Color.black, "_EmissionColor", 0.2f));
            MasterAudio.PlaySound3DAtTransform("Enemy_HIT", transform);
        }
    }

    IEnumerator Sprint()
    {
        if (!sprinting)
        {

        }
        else
            yield return null;
    }

    public void SpeedToZero()
    {
        enemyAI.WorkingMemory.SetItem("moveSpeed", 0);
    }

    public void ResetSpeed()
    {
        enemyAI.WorkingMemory.SetItem("moveSpeed", moveSpeed);
    }

    public void IsAttacking()
    {
        enemyAI.WorkingMemory.SetItem("attack3", true);
    }

    public void IsNotAttacking()
    {
        enemyAI.WorkingMemory.SetItem("attack3", false);
    }

    public void FacePlayer()
    {
        Vector3 v3 = new Vector3(player.position.x, transform.position.y, player.position.z);
        transform.DOLookAt(v3, 1);
    }

    public void EnableAttackCollider()
    {
        if (attackCollider != null)
            attackCollider.enabled = true;

        if (attackCollider2 != null)
            attackCollider2.enabled = true;
    }

    public void DisableAttackCollider()
    {
        if (attackCollider != null)
            attackCollider.enabled = false;

        if (attackCollider2 != null)
            attackCollider2.enabled = true;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            player.GetComponent<Character>().Damages(damageToPlayer, transform.position);

            DisableAttackCollider();
        }
    }
}
