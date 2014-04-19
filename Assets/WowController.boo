import UnityEngine

class WowController (MonoBehaviour): 
	public speed = 2.0
	public decay = -4.0
	public sprites as (Sprite)

	sprite as SpriteRenderer

	def Start():
		sprite = GetComponent(SpriteRenderer)
		sprite.sprite = sprites[Random.Range(0, sprites.Length)]

	def Update():
		sprite.color = FancyColorChooser.current
		transform.position.y += speed * Time.deltaTime
		speed *= Mathf.Exp(decay * Time.deltaTime)
		if speed < 0.09: Destroy(gameObject)
