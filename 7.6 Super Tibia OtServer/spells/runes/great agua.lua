area = {
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0}
}

 attackType = ATTACK_PHYSICAL
 animationEffect = NM_ANI_SUDDENDEATH
 needDirection = false
 hitEffect = NM_ME_MORT_AREA
 damageEffect = NM_ME_DRAW_BLOOD
 animationColor = RED
 offensive = true
 drawblood = true
 
 SuddenDeathObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 
 function onCast(cid, creaturePos, level, maglv, var)
 centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
 
 SuddenDeathObject.minDmg = (level * 2 + maglv *3) * 1.2 - 30
 SuddenDeathObject.maxDmg = (level * 2 + maglv *3) * 1.6
 
 return doTargetMagic(cid, centerpos, SuddenDeathObject:ordered())
 end