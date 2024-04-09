# Thunderbolt
playsound item.trident.riptide_3 player @a
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function utility:raycast/block {step_size: 0.2, max_steps: 150, function: "moba:game/abilities/god/2/2_hit", step_function: "a", run_always: 1}