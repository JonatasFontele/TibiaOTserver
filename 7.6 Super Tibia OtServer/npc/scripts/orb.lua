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
  		selfSay('Hello, ' .. creatureGetName(cid) .. '! I buy rare stones.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

if msgcontains(msg, 'sapphire') and focus == cid then
	item = 2150
	price = 100
	selfSay('Do you want to sell a sapphire for ' ..price.. ' Gold Coins?')
 	talk_start = os.clock()

end

if msgcontains(msg, 'emerald') and focus == cid then
	item = 2149
	price = 150
	selfSay('Do you want to sell a emerald for ' ..price.. ' Gold Coins?')
 	talk_start = os.clock()

end

if msgcontains(msg, 'ruby') and focus == cid then
	item = 2147
	price = 200
	selfSay('Do you want to sell a ruby for ' ..price.. ' Gold Coins?')
 	talk_start = os.clock()
end

if msgcontains(msg, 'amethyst') and focus == cid then
	item = 2150
	price = 250
	selfSay('Do you want to sell a amethyst for ' ..price.. ' Gold Coins?')
 	talk_start = os.clock()
end

if msgcontains(msg, 'diamond') and focus == cid then
	item = 2145
	price = 300
	selfSay('Do you want to sell a diamond for ' ..price.. ' Gold Coins?')
 	talk_start = os.clock()
end
		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
	if string.find(msg, '(%a*)yes(%a*)') and focus == cid then
	sell(cid,item,1,price)
	talk_star = os.clock()

	elseif string.find(msg, '(%a*)no(%a*)') and focus == cid then
	selfSay('Sell for me please!')
	talk_star = os.clock()
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
