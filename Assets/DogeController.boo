import UnityEngine

class DogeController (MonoBehaviour): 
	public initialSpeed = 1.0F
	public xLimit = -10.0F

	def Start ():
		rigidbody2D.velocity = Vector3.right * -initialSpeed

	def Update ():
		if transform.position.x < xLimit:
			Destroy(gameObject)
