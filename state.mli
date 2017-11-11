open Entities

(*Represents the position in coordinates of the model*)
type position

(*Velocity*)
type vel

(*Acceleration*)
type acc

(*[level] is the level that the state is currently in*)
val level : int

val pos_list : (entity * position) list
