import UnityEngine

class RobotController (MonoBehaviour): 
	public xpos = 0.0F
	public speed = 3.0F
	public ground as GameObject
	
	def Update():
		xpos = Mathf.Clamp(xpos + Input.GetAxis("Horizontal") * speed * Time.deltaTime, -8.8, 8.8)
		transform.localPosition = ground.transform.rotation * Vector3.right * xpos
	
	def Die():
		GetComponent(Animator).SetTrigger("Death")
		GameObject.Find("Manager").SendMessage("EndGame")
		for c as Collider2D in GetComponentsInChildren(Collider2D):
			c.enabled = false
		enabled = false
