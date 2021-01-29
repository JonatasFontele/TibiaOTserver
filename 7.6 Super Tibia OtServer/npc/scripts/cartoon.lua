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
 		selfSay('Seja Bem Vindo ' .. creatureGetName(cid) .. '! estou aki para ajudar vc, para ir ao dp digite: (dp) para treinar digite: (treinar) Galera o Serv tem mais de 300 houses umas 35 ou mais quest um bom serv aproveitem')
 		focus = cid
 		talk_start = os.clock()
 	end	if string.find(msg, '(%a*)nk(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
 		selfSay('Tipow, ' .. creatureGetName(cid) .. '! Tem So Um Admin Que Eh o Natan.')
 	        focus = cid
 		talk_start = os.clock()
 	
       end
 	if msgcontains(msg, 'dp') and focus == cid then
 		if pay(cid,0) then
			selfSay('Let\'s go!')
			selfSay('/send ' .. creatureGetName(cid) .. ', 680 606 7')
			focus = 0
			talk_start = 0
		else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end
	if msgcontains(msg, 'treinar') and focus == cid then
 		if pay(cid,0) then
			selfSay('Let\'s go!')
			selfSay('/send ' .. creatureGetName(cid) .. ', 701 600 5')
			focus = 0
			talk_start = 0
		else
			selfSay('Sorry, you don\'t have enough money.')
			talk_start = os.clock()
		end
 	end

 	if string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 4 then
 		selfSay('Se Divirta Site http://addict.servegame.com:8090 MnS>.ck3_ck3@hotmail.com, ' .. creatureGetName(cid) .. '!')
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
 	end	if focus ~= 0 then
		if getDistanceToCreature(focus) > 5 then
			selfSay('Good bye then.')
			focus = 0
		end
	end
end

