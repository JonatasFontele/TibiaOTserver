
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 0 then

elseif item2.itemid == 1381 or 1382 or 1383 or 1384 then
doTransformItem(item.uid,2692)

end
return 1
end
