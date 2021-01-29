area = {
 {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
 {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
 {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
 {2, 2, 0, 0, 0, 1, 0, 0, 0, 3, 3},
 {2, 2, 2, 0, 0, 1, 0, 0, 3, 3, 3},
 {2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3},
 {2, 2, 2, 0, 0, 4, 0, 0, 3, 3, 3},
 {2, 2, 0, 0, 0, 4, 0, 0, 0, 3, 3},
 {0, 0, 0, 0, 4, 4, 4, 0, 0, 0, 0},
 {0, 0, 0, 4, 4, 4, 4, 4, 0, 0, 0},
 {0, 0, 0, 4, 4, 4, 4, 4, 0, 0, 0}
 }
 
attackType = 1
needDirection = true
areaEffect = 10
animationEffect = 10
 
hitEffect = 11
damageEffect = 0
animationColor = 180
offensive = true
drawblood = false
 
UltimateExplosionObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect,
animationColor, offensive, drawblood, 0, 0)
 
function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
n = tonumber(var)   -- try to convert it to a number
if n ~= nil then
-- bugged
-- ultimateExplosionObject.minDmg = var+0
-- UltimateExplosionObject.maxDmg = var+0
 
UltimateExplosionObject.minDmg = 0
UltimateExplosionObject.maxDmg = 0
else
UltimateExplosionObject.minDmg = (level * 2 + maglv * 3) * 2.6 - 30
UltimateExplosionObject.maxDmg = (level * 2 + maglv * 3) * 3.0
end
 
return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, UltimateExplosionObject:ordered())
end
