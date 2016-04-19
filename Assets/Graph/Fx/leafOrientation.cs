using UnityEngine;
using System.Collections;

public class leafOrientation : MonoBehaviour {

    Material mt;

	// Use this for initialization
	void Start () {
        mt = GetComponent<Renderer>().material;
        mt.SetVector("OriginPos", new Vector4(transform.position.x, transform.position.y, transform.position.z));
    }
	
	// Update is called once per frame
	void Update () {

    }
}
