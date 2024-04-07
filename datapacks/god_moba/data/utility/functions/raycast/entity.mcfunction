# shoots a ray and runs the given function as the entity that was found. Doesn't run if no entity is found.
# Assumes a hitbox of 1x1x1. Ignores the executing entity.

# assumes the rotation and position are already correct
#> parameters
# {step_size} How large the steps of the ray should be
# {max_steps} The maximum steps the ray should travel
# {function} the function to call when the block was found

tag @s add self
$scoreboard players set #steps tmp $(max_steps)
$data merge storage util:ray {step_size: $(step_size), function: "$(function)"}
scoreboard players set #found tmp 0
function utility:raycast/helper/entity with storage util:ray
tag @s remove self