function onUse(cid, item, frompos, item2, topos)
luck = math.random(1,10)
pos = getPlayerPosition(cid)

if item.itemid == 2193 and luck == 1 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Seu futuro ser� a morte!")

elseif item.itemid == 2193 and luck == 2 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Voc� ser� muito rico pelo longo de sua jornada!")

elseif item.itemid == 2193 and luck == 3 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Voc� ser� banido por desrespeita os Gamemaster. Tome cuidado!")

elseif item.itemid == 2193 and luck == 4 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"�, incrivel que apare�a um deer ir� te matar! Fica esperto!")

elseif item.itemid == 2193 and luck == 5 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Pare de comprar items ou runas, voc� pode ficar pobre!")

elseif item.itemid == 2193 and luck == 6 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Voc� ser� premiado no servidor por est� muito educado!")

elseif item.itemid == 2193 and luck == 7 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Compre uma casa agora pois voc� poder� ir morar debaixo da ponte!")

elseif item.itemid == 2193 and luck == 8 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Hoje � bom voc� n�o ca�ar, pois os bixos est�o muito revoltados!")

elseif item.itemid == 2193 and luck == 9 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Voc� ser� o TOP level do servidor, continue pegando level assim!")

elseif item.itemid == 2193 and luck == 10 then
doPlayerRemoveItem(cid,2193,1)
doSendMagicEffect(pos,14)
doPlayerSendTextMessage(cid,22,"Brasil ser� HEXA!")

end 
return 1
end