 attackType = ATTACK_NONE
 animationEffect = NM_ANI_NONE
 hitEffect = NM_ME_NONE
 damageEffect = NM_ME_MAGIC_ENERGIE
 animationColor = GREEN
 offensive = false
 drawblood = false
 
 EnergieObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)
 
 function onCast(cid, creaturePos, level, maglv, var)
 	centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
 	ret = doTargetMagic(cid, centerpos, EnergieObject:ordered())
 
sorte = math.random(1,11)

 	if (ret) and sorte == 1 then
              changeOutfit(cid, 60, 122) 
end
if (ret) and sorte == 2 then
              changeOutfit(cid, 60, 20) 
end
if (ret) and sorte == 3 then
              changeOutfit(cid, 60, 40) 
end
if (ret) and sorte == 4 then
              changeOutfit(cid, 60, 12) 
end
if (ret) and sorte == 5 then
              changeOutfit(cid, 60, 204) 
end
if (ret) and sorte == 6 then
              changeOutfit(cid, 60, 202) 
end
if (ret) and sorte == 7 then
              changeOutfit(cid, 60, 35) 
end
if (ret) and sorte == 8 then
              changeOutfit(cid, 60, 4) 
end
if (ret) and sorte == 9 then
              changeOutfit(cid, 60, 25) 
 	end
if (ret) and sorte == 10 then
              changeOutfit(cid, 60, 150) 
 	end
if (ret) and sorte == 11 then
              changeOutfit(cid, 60, 145) 
 	end
 
 	return ret
 end