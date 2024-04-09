# shoots a ray and runs the given function as the entity that was found. Doesn't run if no entity is found.
# Assumes a hitbox of 1x1x1. Ignores the executing entity.

# assumes the rotation and position are already correct
#> parameters
# {step_size} How large the steps of the ray should be
# {max_steps} The maximum steps the ray should travel
# {run_always} Whether or not to call the function at the end of the ray even without a hit
# {function} the function to call when the entity was found
# {step_function} the function to call when the entity was found

tag @s add self
$scoreboard players set #steps tmp $(max_steps)
$scoreboard players set #always tmp $(run_always)
$data merge storage util:ray {step_size: $(step_size), function: "$(function)", step_function: "$(step_function)"}
scoreboard players set #found tmp 0
function utility:raycast/helper/entity with storage util:ray
tag @s remove self