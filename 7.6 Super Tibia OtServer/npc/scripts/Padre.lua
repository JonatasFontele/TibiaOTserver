-- Respawn position set
--ox = 44
--oy = 5
--oz = 6

focus = 0
contador = 0
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
       selfSay('Que Deus os abençoe.')
       focus = 0
       contador = 0
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

if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 3 then
 selfSay('Vamos Iniciar a Cerimônia. Sejam Bem Vindos, o que desejam?')
 focus = cid
 talk_start = os.clock()

elseif string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 3 then
 selfSay('Perdão, ' .. creatureGetName(cid) .. '! Eu estou no meio de um casamento.')

elseif msgcontains(msg, 'casamento') and focus == cid then
                             selfSay('Estao prontos para criar um laço matrimonial?')
                             contador = 1
 talk_start = os.clock()
elseif msgcontains(msg, 'sim') and focus == cid and contador == 1 then
 selfSay('Entao ' .. creatureGetName(cid) .. ' Aceita esta bela jovem como sua legítima esposa?')
 contador = 2
 talk_start = os.clock()
             
elseif msgcontains(msg, 'sim') and focus == cid and contador == 2 then
                             selfSay('Promete amar e respeitar em todas as dificuldades da vida?')
                             contador = 3
 talk_start = os.clock()
elseif msgcontains(msg, 'sim') and focus == cid and contador == 3 then
 selfSay('Entao eu vos declaro Marido e Mulher, pode beijar a noiva.')
 talk_start = os.clock()

elseif string.find(msg, '(%a*)bye(%a*)') and focus == cid and getDistanceToCreature(cid) < 3 then
 selfSay('Deus lhe abençoe, ' .. creatureGetName(cid) .. '!')
 focus = 0
                             contador = 0
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
                                             contador = 0
end
end