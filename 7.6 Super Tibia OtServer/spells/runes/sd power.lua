area = {
 {0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
 {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
 {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
 {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
 {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
 {1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1},
 {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
 {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
 {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
 {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
 {0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}
 }

 attackType = ATTACK_PHYSICAL
 animationEffect = NM_ANI_SUDDENDEATH
 needDirection = false
 hitEffect = NM_ME_MORT_AREA
 damageEffect = NM_ME_MORT_AREA
 animationColor = BLACK
 offensive = true
 drawblood = false
 
 GreatFireballObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 
 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
 
 GreatFireballObject.minDmg = (level * 2 + maglv *3) * 3.40
 GreatFireballObject.maxDmg = (level * 2 + maglv *3) * 2.75
 
 return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, GreatFireballObject:ordered())
 end
