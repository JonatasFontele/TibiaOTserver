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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell Runes, Wands, Rods and ectoplasmas containers.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'runes') then
			selfSay('I sell 100 Mana runes (2.5k), 100 HMMs (1.5K), 100 UHs (2.8Ks), 100 GFBs (2.8K), 100 Explosions (2.8K), 100 SDs (3K) and Blank Runes (5gps). To buy more runes say "10 UH" or "100 SD".')		elseif msgcontains(msg, 'wands') then
			selfSay('I sell Wands of Inferno (15k), Plague (5k), Cosmic Energy (10k), Vortex (500gp) and Dragonbreath (1k).')
		elseif msgcontains(msg, 'rods') then
			selfSay('I sell Quagmire (10k), Snakebite (500gp), Tempest (15k), Volcanic (5k) and Moonlight Rods (1k).')

		elseif msgcontains(msg, 'ectoplasma container') then
			buy(cid,4863,1,10000)
		elseif msgcontains(msg, 'inferno') then
			buy(cid,2187,1,15000)
		elseif msgcontains(msg, 'plague') then
			buy(cid,2188,1,5000)
		elseif msgcontains(msg, 'cosmic energy') then
			buy(cid,2189,1,10000)
		elseif msgcontains(msg, 'vortex') then
			buy(cid,2190,1,500)
		elseif msgcontains(msg, 'dragonbreath') then
			buy(cid,2191,1,1000)

		elseif msgcontains(msg, 'quagmire') then
			buy(cid,2181,1,10000)
		elseif msgcontains(msg, 'snakebite') then
			buy(cid,2182,1,500)
		elseif msgcontains(msg, 'tempest') then
			buy(cid,2183,1,15000)
		elseif msgcontains(msg, 'volcanic') then
			buy(cid,2185,1,5000)
		elseif msgcontains(msg, 'moonlight') then
			buy(cid,2186,1,1000)

		elseif msgcontains(msg, '100 mana rune') then
			buy(cid,2298,100,2500)
		elseif msgcontains(msg, '10 mana rune') then
			buy(cid,2298,10,250)
		elseif msgcontains(msg, 'mana rune') then
			buy(cid,2298,1,25)
		elseif msgcontains(msg, '100 hmm') then
			buy(cid,2311,100,1500)
		elseif msgcontains(msg, '10 hmm') then
			buy(cid,2311,10,150)
		elseif msgcontains(msg, 'hmm') then
			buy(cid,2311,1,15)
		elseif msgcontains(msg, '100 uh') then
			buy(cid,2273,100,2800)		elseif msgcontains(msg, '10 uh') then
			buy(cid,2273,10,280)
		elseif msgcontains(msg, 'uh') then
			buy(cid,2273,1,28)

		elseif msgcontains(msg, '100 gfb') then
			buy(cid,2304,100,2800)		elseif msgcontains(msg, '10 gfb') then
			buy(cid,2304,10,280)
		elseif msgcontains(msg, 'gfb') then
			buy(cid,2304,1,28)
		elseif msgcontains(msg, '100 explosion') then
			buy(cid,2313,100,2800)		elseif msgcontains(msg, '10 explosion') then
			buy(cid,2313,10,280)
		elseif msgcontains(msg, 'explosion') then
			buy(cid,2313,1,28)
		elseif msgcontains(msg, '100 sd') then
			buy(cid,2268,100,3000)		elseif msgcontains(msg, '10 sd') then
			buy(cid,2268,10,300)
		elseif msgcontains(msg, 'sd') then
			buy(cid,2268,1,30)

		elseif msgcontains(msg, 'blank') then
			buy(cid,2260,1,5)

		elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
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
