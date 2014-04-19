import UnityEngine

class RobotCollision (MonoBehaviour): 

	def Start ():
		pass
	
	def Update ():
		pass
	
	def OnTriggerEnter2D(collider as Collider2D):
		transform.parent.SendMessage("Die")
