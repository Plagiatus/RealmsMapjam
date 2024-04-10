kill @e[tag=lobby]

summon item_display 12 87 -436 {Tags: ["lobby"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, -0.707f, 0f, 0.707f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [5f, 5f, 5f]}, item: {id: "minecraft:stick", Count: 1b, tag: {CustomModelData: 1}}, Rotation: [0, 90]}
summon text_display 10 85 -432 {Tags: ["lobby"], brightness: {block: 15, sky: 15}, billboard: "vertical", line_width: 100, text: '[{"text":"Welcome to\\n"}, {"text": "Clash of Olympus\\n\\n", "color": "gold"}, {"text": "You are gods with godly abilities. Fight the other team and capture their temples on either side to get access to their main temple. Once you capture that you are declared the ruler of Olympus!"}]'}

summon interaction 3.6 85 -440.2 {width: 1, height: 2.1f,Tags:["lobby","god","god1"]}
summon interaction -0.3 85 -439.9 {width: 1, height: 2.1f,Tags:["lobby","god","god2"]}
summon interaction 7.55 85 -440.4 {width: 1, height: 2.1f,Tags:["lobby","god","god3"]}