open State

val gravity : float

(*[update_val v a] updates velocity based on currenty velocity and acceleration*)
val update_vel : vel * acc -> vel

(*[move v a p] takes the current velocity, acceleration, and position and
  updates them. *)
val move : vel * acc * position -> vel * acc * position
