using UnityEngine;
using System.Collections;

public class GrenadeObject : MonoBehaviour
{


    public float m_radius;
    public float m_degats;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Terrain" || other.tag == "Ennemy")
        {
            Collider[] candidates = Physics.OverlapSphere(transform.position, m_radius);
            foreach (Collider col in candidates)
            {
                if (col.tag == "Ennemy")
                {
                    col.GetComponent<Enemy>().DamageFromPlayer(m_degats);
                }
            }
            Destroy(gameObject);
        }
    }
}
