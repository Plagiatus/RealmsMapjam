# Thunderbolt
playsound item.trident.riptide_2 player @a
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function utility:raycast/entity {step_size: 0.2, max_steps: 75, function: "moba:game/abilities/god/2/thunderbolt_hit", step_function: "moba:game/abilities/god/2/thunderbolt_ray", run_always: 1}