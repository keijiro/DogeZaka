import UnityEngine

class RobotController (MonoBehaviour): 
	public xpos = 0.0F
	public speed = 3.0F
	public ground as GameObject
	
	def Update ():
		xpos += Input.GetAxis("Horizontal") * speed * Time.deltaTime
		transform.localPosition = ground.transform.rotation * Vector3.right * xpos
