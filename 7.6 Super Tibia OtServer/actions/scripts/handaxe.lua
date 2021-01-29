--Action By BrunuxX
function onUse(cid, item, frompos, item2, topos)

if item2.itemid == 0 then
return 0
end


random = math.random(1,4)

if getPlayerLevel(cid) >= 100 then

if item2.itemid == 2916 and random == 1 then
doTransformItem(item2.uid,2918) 
doPlayerAddItem(cid,2467,1)

elseif item2.itemid == 2916 and random == 2 then
doTransformItem(item2.uid,2918) 
doPlayerAddItem(cid,2195,1)

elseif item2.itemid == 2916 and random == 3 then
doTransformItem(item2.uid,2918) 
doPlayerAddItem(cid,1988,1)

elseif item2.itemid == 2916 and random == 4 then
doTransformItem(item2.uid,2918) 
doPlayerAddItem(cid,2109,1)

end
end
return 1
end