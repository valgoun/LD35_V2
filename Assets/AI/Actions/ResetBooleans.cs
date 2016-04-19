using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using RAIN.Action;
using RAIN.Core;

[RAINAction]
public class ResetBooleans : RAINAction
{
    public override void Start(RAIN.Core.AI ai)
    {
        base.Start(ai);
    }

    public override ActionResult Execute(RAIN.Core.AI ai)
    {
        Animator animator = ai.Body.gameObject.GetComponent<Animator>();

        foreach (var param in animator.parameters)
        {
            if (param.type == AnimatorControllerParameterType.Bool)
                animator.SetBool(param.name, false);
        }

        //         animator.SetBool("running", false);
        // 
        //         animator.SetBool("attack3", false);
        // 
        //         animator.SetBool("recoil", false);
        //         animator.SetBool("walkforward", false);
        //         animator.SetBool("runforward", false);
        //         animator.SetBool("runbackward", false);
        //         animator.SetBool("kick", false);
        //         animator.SetBool("straff", false);
        // 
        //         animator.SetBool("straffLeft", false);
        //         animator.SetBool("straffRight", false);


        return ActionResult.SUCCESS;
    }

    public override void Stop(RAIN.Core.AI ai)
    {
        base.Stop(ai);
    }
}