
function onUse(cid,item,frompos,item2,topos)


poderoubarmana = 1 -- 1 para sim, 0 para n�o (veja abaixo)
qntidadedmana = 100 -- qntidade de mana a ser armazenada


if item.itemid == 4863 then
testnpc = getPlayerLevel(item2.uid) -- verifica se n�o eh npc
if getPlayerMana(item2.uid) >= qntidadedmana and item2.itemid == cid and testnpc > 0 then
 testgm = getPlayerAccess(item2.uid) -- verifica se n�o eh gm
 if poderoubarmana == 1 and testgm < 1 then
  doPlayerAddMana(item2.uid,-qntidadedmana)
  doPlayerSendCancel(item2.uid,"Ops... Alguem roubou sua mana.")
  doTransformItem(item.uid,4864)
  doPlayerSendCancel(cid,"Mana armazenada.")
 elseif poderoubarmana == 0 then
  doPlayerAddMana(cid,-qntidadedmana)
  doTransformItem(item.uid,4864)
  doPlayerSendCancel(cid,"Mana armazenada.")
 else
  doPlayerSendCancel(cid,"Voc� n�o pode pegar mana de GM\'s.")
 end
 doSendMagicEffect(topos,0)
else
 doPlayerSendCancel(cid,"Voc� n�o tem mana suficiente.")
 doSendMagicEffect(topos,2)
end
elseif item.itemid == 4864 then
doTransformItem(item.uid,4863)
doPlayerAddMana(cid,qntidadedmana)
doPlayerSendCancel(cid,"Mana gasta.")
doSendMagicEffect(topos,0)
end

return 1
end