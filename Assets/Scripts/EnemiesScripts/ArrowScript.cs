using UnityEngine;
using System.Collections;

public class ArrowScript : MonoBehaviour 
{
	[HideInInspector]
	public float damage;

	private float time;

	void Awake ()
	{
		time = Time.time;
	}

	void OnTriggerEnter (Collider other)
	{
		if(other.gameObject.tag == "Player")
		{
			other.gameObject.GetComponent<Character>().Damages(damage);
			GameObject.Destroy(gameObject);
		}

		if(other.gameObject.tag == "Ennemy" && Time.time - time > 0.2f)
		{
			GameObject.Destroy(gameObject);
		}

		if(other.gameObject.tag != "Ennemy" && other.gameObject.tag != "Player")
		{
			StopMovement ();
		}
	}

	void StopMovement ()
	{
		GameObject.Destroy(GetComponent<Rigidbody>());

		StartCoroutine (WaitBeforeDestroy ());
	}

	IEnumerator WaitBeforeDestroy ()
	{
		yield return new WaitForSeconds(5);

		GameObject.Destroy(gameObject);
	}
}
