area = {
 {0, 1, 0},
 {2, 0, 3},
 {0, 4, 0}
 }

 attackType =  NM_ANI_NONE
 needDirection = true
 areaEffect = 10
 animationEffect = 10

 hitEffect = NM_ME_POISEN
 damageEffect = 2
 animationColor = GREEN
 offensive = true
 drawblood = false
 minDmg = 6
 maxDmg = 6

 PoisonBombObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 SubPoisonBombObject1 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, minDmg, maxDmg)
 SubPoisonBombObject2 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 6, 6)

 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

 return doAreaGroundMagic(cid, centerpos, needDirection, areaEffect, area, PoisonBombObject:ordered(),
 	0, 1, SubPoisonBombObject1:ordered(),
 	5000, 1, SubPoisonBombObject2:ordered(),
 	2, 35000, 1499,
 	5000, 6, SubPoisonBombObject2:ordered(),
 	1, 60000, 1499,
 	0, 35000, 1499, 3)
 end
