# shoots a ray and runs the given function at either
#   a) the last step before it hits a block that's not air or
#   b) at the end of the ray if only air blocks were hit.

# assumes the rotation and position are already correct
#> parameters
# {step_size} How large the steps of the ray should be
# {max_steps} The maximum steps the ray should travel
# {function} the function to call when the block was found

$scoreboard players set #steps tmp $(max_steps)
$data merge storage util:ray {step_size: $(step_size), function: "$(function)"}
scoreboard players set #found tmp 0
function utility:raycast/helper/block with storage util:ray