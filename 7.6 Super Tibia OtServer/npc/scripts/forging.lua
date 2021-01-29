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
  		selfSay('Hi ' .. creatureGetName(cid) .. '... I can forge thing to you...')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

if msgcontains(msg, 'magic plate armor') then	
	itemstatus = doPlayerRemoveItem(cid,2400) -- 2400 é o item que o player vai ter que dar pro npc	
	itemstatus = doPlayerRemoveItem(cid,2463) -- 2463 é o item que o player vai ter que dar pro npc
	needmoney = 0 -- qntidade que o player precisa pagar (em GPs)	
	money = pay(cid,needmoney)	
	if itemstatus == 0 and money == true then		
		selfSay('Hmm, this is incredible! Take this Magic Plate Armor!')		
		buy(cid,2472,1,0) -- 2472 é o item que ele irá ganhar 
				-- note que o preço do item é 0, ou seja,				
				-- o player irá pagar 0 GPs pelo item;	
	else		
		selfSay('It is missing something...')	
end

if msgcontains(msg, 'helmet of the ancients') then	
	itemstatus = doPlayerRemoveItem(cid,2147) -- 2147 é o item que o player vai ter que dar pro npc	
	itemstatus = doPlayerRemoveItem(cid,2342) -- 2342 é o item que o player vai ter que dar pro npc
	needmoney = 0 -- qntidade que o player precisa pagar (em GPs)	
	money = pay(cid,needmoney)	
	if itemstatus == 0 and money == true then		
		selfSay('Hmm, this is incredible! Take this Full Helmet of the Ancients!')		
		buy(cid,2343,1,0) -- 2343 é o item que ele irá ganhar 
				-- note que o preço do item é 0, ou seja,				
				-- o player irá pagar 0 GPs pelo item;	
	else		
		selfSay('It is missing something...')	
	end
end
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
