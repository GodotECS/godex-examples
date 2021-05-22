extends System


func _prepare():
	with_databag(ECS.FrameTime, IMMUTABLE)
	with_component(ECS.TransformComponent, MUTABLE)
	with_component(ECS.Velocity_gd, IMMUTABLE)


func _for_each(frame_time, transform, velocity):
	transform.transform.basis = transform.transform.basis.rotated(
		velocity.velocity.normalized(),
		velocity.velocity.length() * frame_time.delta)
