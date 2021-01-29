-- demona Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5101 then
  queststatus = getPlayerStorageValue(cid,5101)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found map of tibia.")
   item_uid = doPlayerAddItem(cid,1956,1)
   setPlayerStorageValue(cid,5101,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

