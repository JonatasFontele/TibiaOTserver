-- crystal wand Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5556 then
  queststatus = getPlayerStorageValue(cid,5556)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found crystal wand.")
   item_uid = doPlayerAddItem(cid,2184,1)
   setPlayerStorageValue(cid,5556,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

