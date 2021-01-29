--Actions By BrunuxX
function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 1771 then
doChangeTypeItem(item.uid,1)

elseif item2.itemid == 1772 then
doChangeTypeItem(item.uid,3)

elseif item2.itemid == 1773 then
doChangeTypeItem(item.uid,15)

elseif item2.itemid == 1776 then
doChangeTypeItem(item.uid,1)


else 
doPlayerSendCancel(cid,"Sorry , not possible")
end
end