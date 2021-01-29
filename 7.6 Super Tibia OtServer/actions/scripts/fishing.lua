-- Fuction edited by ta4e --

function onUse(cid, item, frompos, item2, topos)
skill = getPlayerSkill(cid,6)
random_number = math.random(1,(100+skill/2))
if item2.itemid == 4820 or 
item2.itemid == 4821 or 
item2.itemid == 4822 or 
item2.itemid == 4616 or 
item2.itemid == 4608 or item2.itemid == 4609 or 
item2.itemid == 4610 or 
item2.itemid == 4611 or 
item2.itemid == 4612 or 
item2.itemid == 4613 or item2.itemid == 4614 or 
item2.itemid == 4615 or 
item2.itemid == 4617 or 
item2.itemid == 4618 or 
item2.itemid == 4619 or item2.itemid == 4620 or 
item2.itemid == 4621 or 
item2.itemid == 4622 or 
item2.itemid == 4623 or
item2.itemid == 4624 or item2.itemid == 4625 then

doSendMagicEffect(topos,1)
doPlayerAddSkillTry(cid,6,1)

if random_number <= skill then
doPlayerAddItem(cid,2667,1)
if doPlayerRemoveItem(cid,3976,1) == 1 then
end
else
doSendMagicEffect(topos,1)
end
else
doPlayerSendCancel(cid,"Sorry, not possible.")
return 1
end
return 1
end

