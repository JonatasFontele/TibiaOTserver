--Parchment by DuFF

function onUse(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition(cid)
demon1pos = {x=1475, y=307, z=14}
demon2pos = {x=1475, y=317, z=14}
demon3pos = {x=1487, y=307, z=14}
demon4pos = {x=1487, y=317, z=14}

if item.uid == 5555 then

doPlayerSendTextMessage(cid,22,"You have found a 10 crystal coins.")
player2pos = {x=703, y=600, z=7}
  doTeleportThing(cid,player2pos)
  doSummonCreature("Demon", demon1pos)
  doSummonCreature("Demon", demon2pos)
  doSummonCreature("Demon", demon3pos)
  doSummonCreature("Demon", demon4pos)
doTeleportThing(cid,playerpos)
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2160,10)

end
return 1
end