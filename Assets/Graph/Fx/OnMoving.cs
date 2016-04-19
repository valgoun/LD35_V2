using UnityEngine;
using System.Collections;

public class OnMoving : MonoBehaviour
{
    /// <summary>
    /// 1 - The speed of the ship
    /// </summary>
    public Vector3 speed = new Vector3(10,10,10);
    public float torque = -5.0f;

    public Transform RotatorAgent;

    // 2 - Store the movement   
    private Vector2 movement;


    void Start()
    {
        RotatorAgent = transform.GetChild(1);
    }

    void Update()
    {
        
        // 3 - Retrieve axis information
        float inputX = Input.GetAxis("Horizontal");
        float inputY = Input.GetAxis("Vertical");
        /*
        // 4 - Movement per direction
        movement = new Vector3(
          speed.x * inputX,
          speed.y * inputY);

    */

        Vector3 newSpeed = new Vector3(0, speed.y * inputY, speed.x * inputX);

        transform.Translate(newSpeed);

        Vector3 newTorque = new Vector3(0, 0, 1);

        RotatorAgent.Rotate(newTorque, torque);

    }

    void FixedUpdate()
    {
        // 5 - Move the game object
       // GetComponent<Rigidbody>().velocity = movement;
    }
}