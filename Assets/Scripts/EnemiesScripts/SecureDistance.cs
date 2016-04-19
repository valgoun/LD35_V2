using UnityEngine;
using System.Collections;

public class SecureDistance : Enemy
{
	[Header ("SPEED")]
	public float forwardsSpeed = 5;
	public float backwardsSpeed = 5;

	[Header ("DISTANCES")]
	public float distanceKeptFromPlayer = 15;
	public float distanceMargin = 1;

	[Header ("ARROW")]
	public float arrowSpeed;
	public float arrowDamage;

	private GameObject arrowPrefab;

	void Awake ()
	{
		arrowPrefab = transform.GetChild(2).gameObject;
		arrowPrefab.SetActive(false);
	}

	// Use this for initialization
	void Start () 
	{
		base.Start ();
	}

	// Update is called once per frame
	void Update () 
	{
		base.Update ();

		KeepDistanceFromPlayer ();
	}

	void KeepDistanceFromPlayer ()
	{
		if(distanceFromPlayer < (distanceKeptFromPlayer - distanceMargin))
		{
			enemyAI.WorkingMemory.SetItem("moveBackwards", true);
			enemyAI.WorkingMemory.SetItem("moveForwards", false);
			enemyAI.WorkingMemory.SetItem("moveSpeed", backwardsSpeed);
		}

		else if(distanceFromPlayer > (distanceKeptFromPlayer + distanceMargin))
		{
			enemyAI.WorkingMemory.SetItem("moveBackwards", false);
			enemyAI.WorkingMemory.SetItem("moveForwards", true);
			enemyAI.WorkingMemory.SetItem("moveSpeed", forwardsSpeed);
		}

		else
		{
			enemyAI.WorkingMemory.SetItem("moveBackwards", false);
			enemyAI.WorkingMemory.SetItem("moveForwards", false);
		}
	}

	public void InstantiateArrow ()
	{
		GameObject instantiatedArrow = GameObject.Instantiate(arrowPrefab, arrowPrefab.transform.localPosition, arrowPrefab.transform.localRotation) as GameObject;
		instantiatedArrow.gameObject.SetActive(true);
		instantiatedArrow.transform.SetParent(transform);
		instantiatedArrow.transform.localPosition = arrowPrefab.transform.localPosition;
		instantiatedArrow.transform.localRotation = arrowPrefab.transform.localRotation;

		Vector3 v3 = new Vector3(player.transform.position.x, player.transform.position.y + 0.6f, player.transform.position.z);
		instantiatedArrow.transform.LookAt(v3);

		instantiatedArrow.transform.SetParent(null);
		instantiatedArrow.GetComponent<ArrowScript>().damage = arrowDamage;
		instantiatedArrow.GetComponent<Rigidbody>().AddForce(instantiatedArrow.transform.forward * arrowSpeed, ForceMode.Impulse);
	}
}
