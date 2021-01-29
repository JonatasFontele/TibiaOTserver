focus = 0
talk_start = 0
target = 0
following = false
attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  if focus == cid then
         selfSay('Vaza Delinquente')
         focus = 0
         talk_start = 0
  end
end


function onCreatureTurn(creature)

end

function msgcontains(txt, str)
  return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  msg = string.lower(msg)

  if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 4 then
   selfSay('' .. creatureGetName(cid) .. ' Oi so um advogado muito bom posso te tirar num piscar de olhos por 1kk!! vai querer??')
   focus = cid
   talk_start = os.clock()
  end

if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
   selfSay('Pera ' .. creatureGetName(cid) .. 'Perae!')
  end

  if msgcontains(msg, 'sim') and focus == cid then
   if pay(cid,100000) then
   selfSay('Valeu pela grana otário')
				selfSay('/send ' .. creatureGetName(cid) .. ', 703 600 7')
   focus = 0
   talk_start = 0
  else
   selfSay('Ow pobre ######, qndo você tiver 1kk vem falar cumigo.. VAZAAAAAAAAA!!')
   talk_start = os.clock()
  end
  end

  if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
   selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
   focus = 0
   talk_start = 0
  end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
  if (os.clock() - talk_start) > 30 then
   if focus > 0 then
    selfSay('Next Please...')
   end
    focus = 0
  end
if focus ~= 0 then
  if getDistanceToCreature(focus) > 5 then
   selfSay('Good bye then.')
   focus = 0
  end
end
end

