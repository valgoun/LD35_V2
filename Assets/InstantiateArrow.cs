﻿using UnityEngine;
using System.Collections;

public class InstantiateArrow : StateMachineBehaviour 
{
	private bool arrowFired;

	 // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	//override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
	//override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
	{
		if(stateInfo.normalizedTime > 0.1f && !arrowFired)
		{

			if(animator.gameObject.GetComponent<SecureDistance>() != null)
				animator.gameObject.GetComponent<SecureDistance>().InstantiateArrow();

			if(animator.gameObject.GetComponent<StaticDistance>() != null)
				animator.gameObject.GetComponent<StaticDistance>().InstantiateArrow();

			if(animator.gameObject.GetComponent<DynamicDistance>() != null)
				animator.gameObject.GetComponent<DynamicDistance>().InstantiateArrow();

			arrowFired = true;
		}
	}

	// OnStateExit is called when a transition ends and the state machine finishes evaluating this state

	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	{
		arrowFired = false;
	}

	// OnStateMove is called right after Animator.OnAnimatorMove(). Code that processes and affects root motion should be implemented here
	//override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateIK is called right after Animator.OnAnimatorIK(). Code that sets up animation IK (inverse kinematics) should be implemented here.
	//override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}
}
