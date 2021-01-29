-- the id of the creature we are attacking, following, etc.
 
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
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
  end
 
 
  function onCreatureTurn(creature)
 
  endfunction msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
  end
 
 
  function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)
 
  	if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello, ' .. creatureGetName(cid) .. '!.')
  		focus = cid
  		talk_start = os.clock()
  	end
	
	if string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Leave us alone, ' .. creatureGetName(cid) .. '!')
  	end

  	 
  	if msgcontains(msg, 'quest') and focus == cid then
  		talk_start = os.clock()
  		queststatus = getPlayerStorageValue(cid,5019)
 
  		if queststatus == -1 then
  			selfSay('I was in tiquanda and a lot of repitles stole my loot.')
  		end
  	end
 
  	 
  	if msgcontains(msg, 'mysterious fetish') and focus == cid then
  		talk_start = os.clock()
  		queststatus = getPlayerStorageValue(cid,5019)
 
  		if queststatus == -1 then
  			itemstatus = doPlayerRemoveItem(cid,2194)
 
  			if itemstatus == -1 then
  				selfSay('It\'s in one of the barrels. Look under the deck.')
  			else
  				setPlayerStorageValue(cid,5019,1)
  				selfSay('/giveexp 50000 ' .. creatureGetname(cid) .. '')
  			end
  		else			selfSay('This helmet belongs to me.')
  		end
  	end
 
  	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
  		selfSay('Bye, ' .. creatureGetName(cid) .. '!')
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
if focus == 0 then
cx, cy, cz = selfGetPosition()
randmove = math.random(1,20)
if randmove == 1 then
nx = cx + 1
end
if randmove == 2 then
nx = cx - 1
end
if randmove == 3 then
ny = cy + 1
end
if randmove == 4 then
ny = cy - 1
end
if randmove >= 5 then
nx = cx
ny = cy
end
moveToPosition(nx, ny, cz)
--summons = 30
--summons2 = 30
end
end 