--Fundindo Pedra com Helm By Drake--

function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end 

if item2.itemid == 2147 then
doTransformItem(item2.uid,2343)
doRemoveItem(item.uid,2342)
else
return 0
end
return 1
end