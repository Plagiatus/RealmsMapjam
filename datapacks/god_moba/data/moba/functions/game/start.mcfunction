tp @a[team=t1] 4 65 21
tp @a[team=t2] 4 65 -401

team join spectator @a[team=]
tp @a[team=spectator] @a[limit=1,sort=random,team=!spectator]

function moba:game/setup/reset_entities

# TODO some fancy stuff here, particles, sounds, maybe a start timer, or at least a title. 