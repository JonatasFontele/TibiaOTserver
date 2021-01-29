-- demona Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5100 then
  queststatus = getPlayerStorageValue(cid,5100)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found rare sudden death rune.")
   item_uid = doPlayerAddItem(cid,2268,150)
   setPlayerStorageValue(cid,5100,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

