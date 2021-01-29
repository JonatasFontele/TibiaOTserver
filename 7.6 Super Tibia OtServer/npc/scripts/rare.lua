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

endfunction msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I buy Golden Helmets (400K), Golden Boots (400k), Golden Amulets (10k), Golden Rings (10k), Demon Helmet (200k), Demon Armor (200k), Demon Legs (200k), Dragon Scale Helmet (200k), Dragon Scale Legs (400k), Elven Armor (100k), Elven Legs (400k), Great Shield (200k), Blessed Shield (400k), Magic Sword (200k), Stoneccuter Axe (200k), Thunder Hammer (200k), Great Axe (400k), Magic Long Sword (400k) and Sprite Wand (400k).')
  		focus = cid
  		talk_start = os.clock()
	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')  	elseif focus == cid then
		talk_start = os.clock()		if msgcontains(msg, 'golden helmet') then
  			sell(cid,2471,1,400000)
  		elseif msgcontains(msg, 'golden boots') then
  			sell(cid,2646,1,400000)
  		elseif msgcontains(msg, 'golden amulet') then
  			sell(cid,2130,1,10000)
  		elseif msgcontains(msg, 'golden ring') then
  			sell(cid,2179,1,10000)
  		elseif msgcontains(msg, 'demon helmet') then
  			sell(cid,2493,1,200000)
  		elseif msgcontains(msg, 'demon armor') then
  			sell(cid,2494,1,200000)
  		elseif msgcontains(msg, 'demon legs') then
  			sell(cid,2495,1,200000)
		elseif msgcontains(msg, 'dragon scale helmet') then
  			sell(cid,2506,1,200000)
  		elseif msgcontains(msg, 'dragon scale legs') then
			sell(cid,2469,1,400000)
  		elseif msgcontains(msg, 'elven armor') then
  			sell(cid,2505,1,100000)		elseif msgcontains(msg, 'elven legs') then
  			sell(cid,2507,1,400000)		elseif msgcontains(msg, 'great shield') then
  			sell(cid,2522,1,200000)		elseif msgcontains(msg, 'blessed') then
  			sell(cid,2523,1,400000)
  		elseif msgcontains(msg, 'magic sword') then
  			sell(cid,2400,1,200000)		elseif msgcontains(msg, 'stoneccuter') then
  			sell(cid,2431,1,200000)		elseif msgcontains(msg, 'thunder') then
  			sell(cid,2421,1,200000)		elseif msgcontains(msg, 'magic long') then
  			sell(cid,2390,1,400000)
  		elseif msgcontains(msg, 'great axe') then
  			sell(cid,2415,1,400000)
		elseif msgcontains(msg, 'sprite wand') then
  			sell(cid,2453,1,400000)
  		elseif string.find(msg, '(%a*)bye(%a*)')  and getDistanceToCreature(cid) < 4 then
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
end
