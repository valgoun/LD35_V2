using UnityEngine;
using System.Collections;

public class DynamicDistance : Enemy 
{
	[Header ("SPEED")]
	public float forwardsSpeed = 5;
	public float straffSpeed = 5;

	[Header ("STRAFF")]
	public float straffParentRotation;
	public float straffDuration;
	public float straffPause;

	[Header ("DISTANCES")]
	public float maxDistanceFromPlayer;
	public float distanceToStraff = 15;
	public float distanceMargin = 1;
	public float distanceKeptFromPlayer;

	[Header ("ARROW")]
	public float arrowSpeed = 25;
	public float arrowDamage = 5;

	private GameObject arrowPrefab;


	private GameObject straffParent;
	private GameObject straffChild;

	private float distanceToStraffPoint;

	private bool canStraff = true;
	private bool straffTimerOn = false;

	private bool leftStraff;

	private float playerToStraffBall;

	private Animator animator;

	// Use this for initialization
	void Start () 
	{
		base.Start ();

		animator = GetComponent<Animator>();

		straffChild = transform.GetChild(3).gameObject;
		straffParent = transform.GetChild(4).gameObject;

		straffChild.transform.SetParent(null);
		straffParent.transform.SetParent(null);
		straffParent.transform.position = player.position;
		straffChild.transform.SetParent(straffParent.transform);

		enemyAI.WorkingMemory.SetItem("straffSpeed", straffSpeed);


		arrowPrefab = transform.GetChild(2).gameObject;
		arrowPrefab.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () 
	{
		base.Update ();

		DistanceFromPlayer ();

		playerToStraffBall = Vector3.Distance(player.position, straffChild.transform.position);
		distanceToStraffPoint = Vector3.Distance(transform.position, straffChild.transform.position);

		AnimatorBooleans ();
	}

	void DistanceFromPlayer ()
	{

		if(distanceFromPlayer > maxDistanceFromPlayer)
		{
			enemyAI.WorkingMemory.SetItem("canStraff", false);

			enemyAI.WorkingMemory.SetItem("moveForwards", true);
			enemyAI.WorkingMemory.SetItem("moveSpeed", forwardsSpeed);
		}

		if(distanceFromPlayer <= distanceToStraff && enemyAI.WorkingMemory.GetItem<bool>("canStraff") == false && canStraff)
		{
			enemyAI.WorkingMemory.SetItem("moveForwards", false);
			enemyAI.WorkingMemory.SetItem("moveSpeed", straffSpeed);

			GetNewStraffPosition ();

			enemyAI.WorkingMemory.SetItem("canStraff", true);
		}

		if(enemyAI.WorkingMemory.GetItem<bool>("canStraff") == true && canStraff)
		{
			if(!straffTimerOn)
			{
				StartCoroutine (StraffDuration ());
			}

			Straff ();
		}
	}

	void Straff ()
	{
		enemyAI.WorkingMemory.SetItem("straffPosition", straffChild.transform.position);

		if(enemyAI.WorkingMemory.GetItem<bool>("canStraff") == true && distanceToStraffPoint <= closeEnoughDistance + 2)
		{
			GetNewStraffPosition ();
		}
	}

	void GetNewStraffPosition ()
	{
		straffParent.transform.position = player.position;
		straffChild.transform.position = transform.position;

		/*Vector3 v3 = (transform.position - player.position).normalized;
		v3 += transform.position;
		straffChild.transform.position = v3;*/

		straffParent.transform.Rotate(new Vector3(0, leftStraff ? straffParentRotation : -straffParentRotation, 0));
	}

	void AnimatorBooleans ()
	{
		if(canStraff && leftStraff)
		{
			enemyAI.WorkingMemory.SetItem("straffLeft", true);
			enemyAI.WorkingMemory.SetItem("straffRight", false);


			//animator.SetBool("straffRight", false);
			//animator.SetBool("straffLeft", true);
		}

		if(canStraff && !leftStraff)
		{
			enemyAI.WorkingMemory.SetItem("straffLeft", false);
			enemyAI.WorkingMemory.SetItem("straffRight", true);

			//animator.SetBool("straffRight", true);
			//animator.SetBool("straffLeft", false);
		}

	}

	IEnumerator StraffDuration ()
	{
		straffTimerOn = true;

		yield return new WaitForSeconds(straffDuration);

		canStraff = false;

		enemyAI.WorkingMemory.SetItem("straffLeft", false);
		enemyAI.WorkingMemory.SetItem("straffRight", false);

		leftStraff = !leftStraff;

		yield return new WaitForSeconds(straffPause);

		canStraff = true;
		straffTimerOn = false;
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
