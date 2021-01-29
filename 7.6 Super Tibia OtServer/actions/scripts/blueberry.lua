function onUse(cid, item, frompos, item2, topos)

if item.itemid == 2785 then
doTransformItem(item.uid,2786)
doCreateItem(2677,3,topos)
end
end
