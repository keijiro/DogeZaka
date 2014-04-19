import UnityEngine

class DogeController (MonoBehaviour): 
	public initialSpeed = 1.0F
	public xLimit = -10.0F
	public wowPrefab as GameObject
	public minInterval = 0.2
	
	interval = 0.0

	def Start ():
		rigidbody2D.velocity = Vector3.right * -initialSpeed

	def Update ():
		interval += Time.deltaTime
		if transform.position.x < xLimit:
			Destroy(gameObject)
	
	def OnCollisionEnter2D(collision as Collision2D):
		if collision.collider.name == "Head":
			if interval > minInterval:
				Instantiate(wowPrefab, transform.position, Quaternion.identity)
				GameObject.Find("Manager").SendMessage("RewardHeading")
				interval = 0.0
