--dlair 
 
function onUse(cid, item, frompos, item2, topos)
 
doorpos = {x=frompos.x, y=frompos.y, z=frompos.z}
playerpos = getPlayerPosition(cid)
playerlevel = getPlayerLevel(cid)
 
if item.itemid == 1227 and doorpos.x == 1517 and doorpos.y == 925 and doorpos.z == 9 then
if playerlevel > 95 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 95 then
doPlayerSendTextMessage(cid,22,"Você precisa ser level 95 para passar.")
end
end
return 1
end
