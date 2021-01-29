function onUse(cid, item, frompos, item2, topos)
topos = {x=topos.x, y=topos.y, z=topos.z}
if item2.itemid == 0 then
return 0
end

if item2.itemid == 1787 then
doSendMagicEffect(topos,2)
doTransformItem(item2.uid,1786)
else
return 0
end        
return 1
end

