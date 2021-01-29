--orshquest 
 
function onUse(cid, item, frompos, item2, topos)
 
doorpos = {x=frompos.x, y=frompos.y, z=frompos.z}
playerpos = getPlayerPosition(cid)
playerlevel = getPlayerLevel(cid)
 
if item.itemid == 1227 and doorpos.x == 1249 and doorpos.y == 553 and doorpos.z == 9 then
if playerlevel > 220 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 220 then
doPlayerSendTextMessage(cid,22,"Você precisa ser level 220 para passar.")
end
end
return 1
end
