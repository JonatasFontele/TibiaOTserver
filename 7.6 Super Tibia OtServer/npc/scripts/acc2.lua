focus = 0
talk_start = 0
target = 0
following = false
attacking = false
accstatus = 0
seksik = 3
myname = ''
mypass = ''
maxnamelen = 10
maxpasslen = 14
allow_pattern = '^[a-zA-Z0-9 -]+$'
origmsg = ''
mypasscheck = ''
mynamecheck = ''

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
origmsg = msg
msg = string.lower(msg)



if (msgcontains(msg, 'hi') and focus == 0) and getDistanceToCreature(cid) < 4 then
selfSay('Hello...Male or Female?')
accstatus = 1
myname = ''
mypass = ''
myaccnumber = 0
seksik = 0
focus = cid
talk_start = os.clock()


elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Please wait')


elseif focus == cid then
talk_start = os.clock()



if msgcontains(msg, 'male') and accstatus == 1 then
selfSay('Your name is...?')
seksik = 1
accstatus = 2
elseif msgcontains(msg, 'female') and accstatus == 1 then
selfSay('Your name is...?')
seksik = 0
accstatus = 2


elseif accstatus == 2 then
myname = origmsg
mynamecheck = msg
if string.len(mynamecheck) <= maxnamelen then
if string.find(mynamecheck, allow_pattern) then
if io.open("data/players/"..myname..".xml" , "r") == nil then
selfSay('Your Name is '..myname..'. yes ?')
accstatus = 3
else
selfSay('Name allready exist, please give next one')
end
else
selfSay('Illegal characters, try another')
end
else
selfSay('Name is too long! Max is 10, try again')
end
elseif msgcontains(msg, 'yes') then
if accstatus == 3 then
selfSay('Ok, give your password')
accstatus = 4
elseif accstatus == 5 then
if seksik == 0 then
selfSay('Ok. Lets check: You are female, your name is '..myname..', your password is '..mypass..'.yes ?')
else
selfSay('Ok. Lets check: You are male, your name is '..myname..', your password is '..mypass..'.yes ?')
end
accstatus = 10
elseif accstatus == 10 then
selfSay('Ok. Say "acc" to take your acc...')
accstatus = 7
end
elseif msgcontains(msg, 'no') then
if accstatus == 3 then
selfSay('Chooze another')
accstatus = 2
elseif accstatus == 5 then
selfSay('Chooze another')
accstatus = 4
elseif accstatus == 6 then
selfSay('Again, you are man or woman?')
accstatus = 1
end
elseif accstatus == 4 then
mypass = origmsg
mypasscheck = msg
if string.len(mypasscheck) <= maxpasslen then
if string.find(mypasscheck, allow_pattern) then
selfSay('Your pass is '..mypass..' yes ?')
accstatus = 5
else
selfSay('Illegal characters, try another')
end
else
selfSay('too long! Max is 6, give other')
end

elseif msgcontains(msg, 'acc') and accstatus == 7 then
myaccnumber = math.random(100000,999999)
if io.open("data/accounts/"..myaccnumber..".xml" , "r") == nil then
selfSay('Your Acc is '..myaccnumber..'. Please Log in your Char...Good Luck!')
accstatus = 8
f = assert(io.open("./data/accounts/"..myaccnumber..".xml", "w"))
f = io.open("./data/accounts/"..myaccnumber..".xml", "w")
f:write("<?xml version=\"1.0\"?><account pass=\""..mypass.."\" type=\"1\" premDays=\"0\"><characters><character name=\""..myname.."\"\/><\/characters><\/account>")
f:close()

f = assert(io.open("./data/players/"..myname..".xml", "w"))
f = io.open("./data/players/"..myname..".xml", "w")
f:write("<?xml version=\"1.0\"?><player name=\""..myname.."\" account=\""..myaccnumber.."\" sex=\""..seksik.."\" lookdir=\"3\" exp=\"4200\" voc=\"2\" level=\"8\" access=\"0\" cap=\"470\" maglevel=\"1\" lastlogin=\"0\" premticks=\"0\" promoted=\"0\" banned=\"0\"><spawn x=\"160\" y=\"51\" z=\"7\"\/><temple x=\"160\" y=\"51\" z=\"7\"\/><skull type=\"0\" kills=\"0\" ticks=\"0\" absolve=\"0\"\/><health now=\"185\" max=\"185\" food=\"1000\"\/><mana now=\"35\" max=\"35\" spent=\"1\"\/><look type=\"134\" head=\"77\" body=\"79\" legs=\"78\" feet=\"77\"\/><skills><skill skillid=\"0\" level=\"10\" tries=\"0\"\/><skill skillid=\"1\" level=\"10\" tries=\"0\"\/><skill skillid=\"2\" level=\"10\" tries=\"0\"\/><skill skillid=\"3\" level=\"10\" tries=\"0\"\/><skill skillid=\"4\" level=\"10\" tries=\"0\"\/><skill skillid=\"5\" level=\"10\" tries=\"0\"\/><skill skillid=\"6\" level=\"10\" tries=\"0\"\/><\/skills><spells><spell words=\"utevo lux\"\/><\/spells><deaths\/><inventory><slot slotid=\"1\"><item id=\"2490\"\/><\/slot><slot slotid=\"3\"><item id=\"1988\"><inside><item id=\"2674\" count=\"5\"\/><\/inside><\/item><\/slot><slot slotid=\"4\"><item id=\"2463\"\/><\/slot><slot slotid=\"5\"><item id=\"2525\"\/><\/slot><slot slotid=\"6\"><item id=\"2182\"\/><\/slot><slot slotid=\"7\"><item id=\"2647\"\/><\/slot><slot slotid=\"8\"><item id=\"2643\"\/><\/slot><\/inventory><depots><depot depotid=\"1\"><item id=\"2591\"><inside><item id=\"2594\"\/><\/inside><\/item><\/depot><\/depots><storage><data key=\"777\" value=\""..seksik.."\"\/><\/storage><\/player>")
f:close()
else
selfSay('Error number allready exist. Say again "acc" ')
end



elseif msgcontains(msg, 'next') and accstatus == 8 then
selfSay(''..myaccnumber..' Pass is '..mypass..' . If you like to enter OTS website say: --links--.')
accstatus = 0
elseif msgcontains(msg, 'links') then
selfSay('URLS')




elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
focus = 0
accstatus = 0
myname = ''
mypass = ''
myaccnumber = 0
seksik = ''
talk_start = 0
end
end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Nastepny prosze')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('Do zobaczenia')
focus = 0
end
end
end