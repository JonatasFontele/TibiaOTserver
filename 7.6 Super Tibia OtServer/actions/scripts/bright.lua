-- BS Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 3636 then
  queststatus = getPlayerStorageValue(cid,3636)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bright sword.")
   item_uid = doPlayerAddItem(cid,2407,1)
   setPlayerStorageValue(cid,3636,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

