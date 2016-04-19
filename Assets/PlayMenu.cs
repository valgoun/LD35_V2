using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class PlayMenu : MonoBehaviour
{
    public void PlayScene()
    {
        SceneManager.LoadScene(1, LoadSceneMode.Single);
    }

}
