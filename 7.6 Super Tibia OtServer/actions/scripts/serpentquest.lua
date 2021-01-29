--serpentquest 
 
function onUse(cid, item, frompos, item2, topos)
 
doorpos = {x=frompos.x, y=frompos.y, z=frompos.z}
playerpos = getPlayerPosition(cid)
playerlevel = getPlayerLevel(cid)
 
if item.itemid == 1227 and doorpos.x == 1724 and doorpos.y == 1282 and doorpos.z == 10 then
if playerlevel > 135 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 135 then
doPlayerSendTextMessage(cid,22,"Você precisa ser level 135 para passar.")
end
end
return 1
end
