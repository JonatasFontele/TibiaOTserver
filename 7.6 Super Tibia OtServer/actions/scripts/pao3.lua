
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 0 then

elseif item2.itemid == 1786 or 1788 or 1790 or 1792 then
doRemoveItem(item.uid,1)
doCreateItem(2689,1,topos)
doPlayerSendTextMessage(cid,22,"Você fez um pão.")

end
return 1
end
