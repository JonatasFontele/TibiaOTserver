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

end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello, ' .. creatureGetName(cid) .. '...')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'blue robe') then
			buy(cid,2656,1,50)
		elseif msgcontains(msg, 'golden legs') then
			buy(cid,2470,1,0)
		elseif msgcontains(msg, 'e-plate') then
			buy(cid,2472,1,10)
		elseif msgcontains(msg, 'golden armor') then
			buy(cid,2466,1,20)
		elseif msgcontains(msg, 'ring of the skies') then
			buy(cid,2123,1,10)
		elseif msgcontains(msg, 'boh') or msgcontains(msg, 'mana fluid') then
			buy(cid,2195,7,100)
		elseif msgcontains(msg, 'dsm') or msgcontains(msg, 'life fluid') then
			buy(cid,2492,10,60)
		elseif msgcontains(msg, 'royal helmet') then
			buy(cid,2498,1,100)
		elseif msgcontains(msg, 'demon shield') then
			buy(cid,2520,1,100)
		elseif msgcontains(msg, 'mms') then
			buy(cid,2514,1,100)
		elseif msgcontains(msg, 'c-legs') then
			buy(cid,2488,1,100)
		elseif msgcontains(msg, 'sov') then
			buy(cid,2400,1,100)
		elseif msgcontains(msg, 'sca') then
			buy(cid,2431,1,100)
		elseif msgcontains(msg, 'th') then
			buy(cid,2421,1,100)
		elseif msgcontains(msg, 'teddy') then
			buy(cid,2112,1,100)
		elseif msgcontains(msg, 'darmor') then
			buy(cid,2494,1,100)
		elseif msgcontains(msg, 'dhelmet') then
			buy(cid,2493,1,100)
		elseif msgcontains(msg, 'dlegs') then
			buy(cid,2495,1,100)
		elseif msgcontains(msg, 'torch') then
			buy(cid,2050,1,2)		elseif msgcontains(msg, 'vial') or msgcontains(msg, 'flask') then
			sell(cid,2006,1,10)

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
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