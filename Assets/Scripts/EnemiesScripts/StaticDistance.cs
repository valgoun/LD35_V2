using UnityEngine;
using System.Collections;

public class StaticDistance : Enemy
{
	[Header ("DISTANCES")]
	public float distanceKeptFromPlayer;
	public float distanceToKick;

	[Header ("ARROW")]
	public float arrowSpeed;
	public float arrowDamage;

	private GameObject arrowPrefab;

	void Awake ()
	{
		arrowPrefab = transform.GetChild(1).gameObject;
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

		GetCloserToPlayer ();
	}

	void GetCloserToPlayer ()
	{
		if(distanceFromPlayer > distanceKeptFromPlayer)
			enemyAI.WorkingMemory.SetItem("moveForwards", true);
		else
			enemyAI.WorkingMemory.SetItem("moveForwards", false);

		if(distanceFromPlayer < distanceToKick)
			enemyAI.WorkingMemory.SetItem("canKick", true);
		else
			enemyAI.WorkingMemory.SetItem("canKick", false);
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
