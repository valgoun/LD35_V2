using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using RAIN.Action;
using RAIN.Core;

[RAINAction]
public class enemyDeath : RAINAction
{
    public override void Start(RAIN.Core.AI ai)
    {
        base.Start(ai);
    }

    public override ActionResult Execute(RAIN.Core.AI ai)
    {
        //Debug.Log(ai.Body.name + " is dead");
        ai.WorkingMemory.SetItem("dead", true);
        ai.Body.GetComponent<Animator>().SetTrigger("Death");
		MobSpwaner.Instance.Remove(ai.Body.gameObject);
        return ActionResult.SUCCESS;
    }

    public override void Stop(RAIN.Core.AI ai)
    {
        base.Stop(ai);
    }
}