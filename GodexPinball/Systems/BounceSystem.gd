extends System


func _prepare():
	with_component(ECS.BounceComponent_gd, System.IMMUTABLE)
	with_storage(ECS.Impulse)


func _for_each(bounce, impulse_storage):
	# Add the impulse toward the Area UP
	var data = {"impulse": bounce.overlap_area_transform.basis.y * -6.0}
	impulse_storage.insert(get_current_entity_id(), data)
