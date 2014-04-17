import UnityEngine
import System.Collections

class Spawner (MonoBehaviour):
	public prefab as GameObject
	public variance = Vector2(2.0F, 1.0F)
	public interval = 1.0F
	public difficulty = 0.1F
	public minInterval = 0.5F
	
	def Start () as IEnumerator:
		while true:
			diff = Vector2(Random.Range(0.0F, variance.x), Random.Range(0.0F, variance.y))
			GameObject.Instantiate(prefab, transform.position + diff, Quaternion.identity)
			yield WaitForSeconds(interval)

	def Update ():
		interval = Mathf.Max(interval - difficulty * Time.deltaTime, minInterval)