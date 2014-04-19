import UnityEngine
import System.Collections

class GameManager (MonoBehaviour): 
	public scoreStyle as GUIStyle
	public messageStyle as GUIStyle
	
	public scorePerSecond = 10.0
	public headingScore = 100.0
	public headingInterval = 0.2
	
	score = 0.0
	isAlive = true
	messageText = ""
	
	def Start() as IEnumerator:
		while isAlive:
			score += Time.deltaTime * scorePerSecond
			yield
		
		yield WaitForSeconds(1)
		
		messageText = "hit space to try again"
		
		while not Input.GetKey(KeyCode.Space):
			yield
		
		Application.LoadLevel(0)
		
	def OnGUI():
		GUI.Label(Rect(0, 0, 200, 100), "score : " + Mathf.FloorToInt(score), scoreStyle)
		if messageText:
			messageStyle.normal.textColor = FancyColorChooser.current
			GUI.Label(Rect(0, 0, Screen.width, Screen.height), messageText, messageStyle)

	def RewardHeading():
		score += headingScore
	
	def EndGame():
		isAlive = false
