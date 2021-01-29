--wdquest 
 
function onUse(cid, item, frompos, item2, topos)
 
doorpos = {x=frompos.x, y=frompos.y, z=frompos.z}
playerpos = getPlayerPosition(cid)
playerlevel = getPlayerLevel(cid)
 
if item.itemid == 1227 and doorpos.x == 874 and doorpos.y == 276 and doorpos.z == 11 then
if playerlevel > 80 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 80 then
doPlayerSendTextMessage(cid,22,"Você precisa ser level 80 para passar.")
end
end
return 1
end
