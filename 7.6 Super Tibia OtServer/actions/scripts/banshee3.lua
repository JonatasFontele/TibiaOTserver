-- 10k Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 1003 then
  queststatus = getPlayerStorageValue(cid,1003)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found 100 platinum coins.")
   item_uid = doPlayerAddItem(cid,2152,100)
   setPlayerStorageValue(cid,1003,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

