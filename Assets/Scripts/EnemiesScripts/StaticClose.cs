using UnityEngine;
using System.Collections;

public class StaticClose : Enemy
{

	// Use this for initialization
	void Start () 
	{
		base.Start ();
	}

	// Update is called once per frame
	void Update () 
	{
		base.Update ();

		if (enemyAI.WorkingMemory.GetItem<bool> ("dead") == true)
		{
			attackCollider.enabled = false;
		}
	}


}
