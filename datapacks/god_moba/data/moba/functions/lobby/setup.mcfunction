kill @e[tag=lobby]

summon item_display 12.3 88 -436 {Tags: ["lobby"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, -0.707f, 0f, 0.707f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [5f, 5f, 5f]}, item: {id: "minecraft:stick", Count: 1b, tag: {CustomModelData: 1}}, Rotation: [0, 90]}
summon text_display 3 86 -428 {Tags: ["lobby"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 1.0f, 0f, 0.0f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [1f, 1f, 1f]}, text: '[{"text":"Welcome to\\n"}, {"text": "Clash of Olympus\\n\\n", "color": "gold"}, {"text": "You are gods with godly abilities. Fight the other team and capture their temples on either side to get access to their main temple. Once you capture that you are declared the ruler of Olympus!\\n\\nPick a god to fight as and pick a team before you start.\\n\\n\\n\\nCreated by Cxom, Plagiatus and Robeens\\nFor the Java Realms Creator Anniversary Mapjam"}]'}

summon interaction 3.6 85 -440.2 {width: 1, height: 2.1f,Tags:["lobby","god","god1"], response:true}
summon interaction -0.3 85 -439.9 {width: 1, height: 2.1f,Tags:["lobby","god","god2"], response:true}
summon interaction 7.55 85 -440.4 {width: 1, height: 2.1f,Tags:["lobby","god","god3"], response:true}


summon text_display -5.3 88 -436 {Tags: ["lobby"], brightness: {block: 15, sky: 15}, billboard: "fixed", transformation: {left_rotation: [0f, 0.707f, 0f, 0.707f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [2f, 2f, 2f]}, background:0, text: '[{"text":"START", "color":"gold", "bold": true}]'}
summon text_display -5.3 86.5 -435 {Tags: ["lobby"], brightness: {block: 15, sky: 15}, billboard: "fixed", transformation: {left_rotation: [0f, 0.707f, 0f, 0.707f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [1.2f, 1.2f, 1.2f]}, background:0, text: '[{"text":"Team\\nRed", "color":"red"}]'}
summon text_display -5.3 86 -436 {Tags: ["lobby"], brightness: {block: 15, sky: 15}, billboard: "fixed", transformation: {left_rotation: [0f, 0.707f, 0f, 0.707f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [1.2f, 1.2f, 1.2f]}, background:0, text: '[{"text":"Spectate", "color":"white"}]'}
summon text_display -5.3 86.5 -437 {Tags: ["lobby"], brightness: {block: 15, sky: 15}, billboard: "fixed", transformation: {left_rotation: [0f, 0.707f, 0f, 0.707f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [1.2f, 1.2f, 1.2f]}, background:0, text: '[{"text":"Team\\nBlue", "color":"dark_aqua"}]'}

summon interaction -6.3 88 -436 {width: 2, height: 0.7f,Tags:["lobby","start"], response:true}
summon interaction -5.8 86.5 -435 {width: 1, height: 0.75f,Tags:["lobby","red"], response:true}
summon interaction -6.05 85.9 -436 {width: 1.5f, height: 0.6f,Tags:["lobby","spectator"], response:true}
summon interaction -5.8 86.5 -437 {width: 1, height: 0.75f,Tags:["lobby","blue"], response:true}