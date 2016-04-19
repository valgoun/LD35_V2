using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour
{

    public float m_speed;
    public float m_damage;

    // Use this for initialization
    void Start()
    {
        StartCoroutine(DestroyAfterTime());
    }

    // Update is called once per frame
    void Update()
    {
        transform.position += transform.forward * Time.deltaTime * m_speed;
    }

    IEnumerator DestroyAfterTime()
    {
        yield return new WaitForSeconds(15f);
        Destroy(gameObject);
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Ennemy")
        {
            var enemy = other.GetComponent<Enemy>();
            enemy.DamageFromPlayer(m_damage);
            Destroy(gameObject);
        }
    }
}
