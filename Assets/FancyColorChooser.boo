import UnityEngine
import System.Collections

class FancyColorChooser (MonoBehaviour): 
	public colors as (Color)
	
	public static current as Color
	
	def Start() as IEnumerator:
		while true:
			current = colors[Random.Range(0, colors.Length)]
			yield WaitForSeconds(0.03)
