---Lixeira por alavanca 2.0 by Rike and Colex
function onUse(cid, item, frompos, item2, topos)

pos1 = {x=topos.x,y=topos.y-2,z=topos.z,stackpos=1}
pos1lixo = getThingfromPos(pos1)

pos2 = {x=topos.x,y=topos.y-2,z=topos.z,stackpos=2}
pos2lixo = getThingfromPos(pos2)

pos3 = {x=topos.x,y=topos.y-2,z=topos.z,stackpos=3}
pos3lixo = getThingfromPos(pos3)

pos4 = {x=topos.x,y=topos.y-2,z=topos.z,stackpos=4}
pos4lixo = getThingfromPos(pos4)


if item.itemid == 1945 then

if pos1lixo.itemid > 0 then
doRemoveItem(pos1lixo.uid,pos1lixo.type)
doSendMagicEffect(pos1,2)

if pos2lixo.itemid > 0 then
doRemoveItem(pos2lixo.uid,pos2lixo.type)
doSendMagicEffect(pos2,2)
end
if pos3lixo.itemid > 0 then
doRemoveItem(pos3lixo.uid,pos3lixo.type)
doSendMagicEffect(pos3,2)
end
if pos4lixo.itemid > 0 then
doRemoveItem(pos4lixo.uid,pos4lixo.type)
doSendMagicEffect(pos4,2)
end


doPlayerSendTextMessage(cid,22,"You removed a item.")
doTransformItem(item.uid,item.itemid+1)
else
doPlayerSendTextMessage(cid,22,"Put a item to remove.")
end
end

if item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)

end
return 1
end
