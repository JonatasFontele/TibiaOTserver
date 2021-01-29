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
		if isPremium(cid) then
			selfSay('Hello ' .. creatureGetName(cid) .. '! I can take you to Thais (100gps), Venore (100gps), Carlin (100gps), Ab (100gps), Aknrahmun (100gps) or Port Hope (100gps). Where do you want to go?')
			focus = cid
			talk_start = os.clock()

		else
			selfSay('Sorry, only premium players can travel by boat.')
			focus = 0
			talk_start = 0
		end

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'ab') then
			if pay(cid,100) then
				selfSay('Let\'s go!')
				selfSay('/send ' .. creatureGetName(cid) .. ', 1080 488 6')
				focus = 0
				talk_start = 0
			else
				selfSay('Sorry, you don\'t have enough money.')
			end

		elseif msgcontains(msg, 'thais') then
			if pay(cid,100) then
				selfSay('Let\'s go!')
				selfSay('/send ' .. creatureGetName(cid) .. ', 387 1354 6')
				focus = 0
				talk_start = 0
			else
				selfSay('Sorry, you don\'t have enough money.')
			end

		elseif msgcontains(msg, 'carlin') then
			if pay(cid,100) then
				selfSay('Let\'s go!')
				selfSay('/send ' .. creatureGetName(cid) .. ', 732 640 6')
				focus = 0
				talk_start = 0
			else
				selfSay('Sorry, you don\'t have enough money.')
			end

		elseif msgcontains(msg, 'ankrahmun') then
			if pay(cid,100) then
				selfSay('Let\'s go!')
				selfSay('/send ' .. creatureGetName(cid) .. ', 1532 1012 6')
				focus = 0
				talk_start = 0
			else
				selfSay('Sorry, you don\'t have enough money.')
			end

		elseif msgcontains(msg, 'venore') then
			if pay(cid,100) then
				selfSay('Let\'s go!')
				selfSay('/send ' .. creatureGetName(cid) .. ', 1137 880 6')
				focus = 0
				talk_start = 0
			else
				selfSay('Sorry, you don\'t have enough money.')
			end

		elseif msgcontains(msg, 'port hope') then
			if pay(cid,100) then
				selfSay('Let\'s go!')
				selfSay('/send ' .. creatureGetName(cid) .. ', 1543 1388 6')
				focus = 0
				talk_start = 0
			else
				selfSay('Sorry, you don\'t have enough money.')
			end

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
  	end	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
