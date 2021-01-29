--demodrasquest 
 
function onUse(cid, item, frompos, item2, topos)
 
doorpos = {x=frompos.x, y=frompos.y, z=frompos.z}
playerpos = getPlayerPosition(cid)
playerlevel = getPlayerLevel(cid)
 
if item.itemid == 1229 and doorpos.x == 1645 and doorpos.y == 882 and doorpos.z == 10 then
if playerlevel > 200 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 200 then
doPlayerSendTextMessage(cid,22,"Você precisa ser level 200 para passar.")
end
end
return 1
end
