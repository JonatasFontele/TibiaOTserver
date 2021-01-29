---------------------------- OTServ configuration ------------------------------

-- datadir
datadir = "data/"

-- sets what map to load
map = "data/world/test.otbm"

-- OTBM for binary, SQL for SQL map, XML for OTX maps
mapkind = "OTBM"

-- SQL for acc/player info from SQL, XML for acc/player info from XML
sourcedata = "XML"

-- the message the player gets when he logs in
loginmsg = "Welcome to Shining Serv"

-- the port otserv listens on
port = "7171"

-- name of our server
servername = "Shiningserver"

-- name of the owner of our server
ownername = "Shining"

-- email of the owner of our server
owneremail = "zemane4@hotmail.com"

-- the url for more server info
url = "http://xtibia.com/forum"

-- the location of the server
location = "Brazil"

-- the ip the server should redirect too
ip = "201.37.61.230"

-- The messagebox you sometimes get before you choose characters
motd = "Welcome to Shining. Have Fun!"
motdnum="0"

-- use md5 passwords for accounts, yes/no
md5passwords = "no"

-- world type. options: pvp, no-pvp, pvp-enforced
worldtype = "pvp"

-- max number of players allowed
maxplayers = "80"

-- exhausted time in ms (1000 = 1sec)
exhausted = 1000

-- exhaustion time for healing spells (1000 = 1sec)
exhaustedheal = 1000

-- how many ms to add if the player is already exhausted and tries to cast a spell (1000 = 1sec)
exhaustedadd = 500

-- how long does the player has to stay out of fight to get pz unlocked in ms (1000 = 1sec)
pzlocked = 30*1000

-- allow multiple logins of the same char
allowclones = 0

-- vocation names
vocations = {"a sorcerer", "a druid", "a paladin", "a knight"}
promoted_vocations = {"a master sorcerer", "a elder druid", "a royal paladin", "a elite knight"}


--- SQL part
sql_host = "localhost"
sql_user = "root"
sql_pass = ""
sql_db   = "otserv"


--- SQL MAP part
sqlmap = "test_map"
map_host = "localhost"
map_user = "root"
map_pass = ""
map_db   = ""

------------------------- Other basic configuration ---------------------------

-- name of your world (seen on the character list when logging in)
worldname = "Shining"

-- how often do server saves it's state (0 = off, 5 = 5min, 60 = hour)
autosave = 5

-- do you want to enable cap system? (yes/no)
capsystem = "no"

-- do you want players to learn spells before they can use them? (yes/no)
learnspells = "no"

-- do you want to give premium account to all players? (yes/no)
freepremmy = "no"

-- do you want premium players to wait in queue as others? (yes/no)
queuepremmy = "no"

-- how much % of {exp, mana, skill, eq, bp} do you lose when dying
diepercent = {"4", "4", "4", "4", "100"}
diebless0 = 4

-- how much % of exp/skills/stuff do you lose when dying if you have 1 blessing
diebless1 = 9
-- how much % of exp/skills/stuff do you lose when dying if you have 2 blessings
diebless2 = 8
-- how much % of exp/skills/stuff do you lose when dying if you have 3 blessings
diebless3 = 7
-- how much % of exp/skills/stuff do you lose when dying if you have 4 blessings
diebless4 = 6
-- how much % of exp/skills/stuff do you lose when dying if you have 5 blessings
diebless5 = 3

-- how many summons player can have
maxsummons = 2

-- do you want to give summons for all vocations? (yes/no)
summonsallvoc = "no"

-- chance of losing a spear when shot (0 - none lost, 100000 - all lost)
spearlosechance = 50

-- anti-afk - maximum idle time to kick player (1 = 1min)
kicktime = 15

-- maximum number of items player can keep in his/her depot
maxdepotitems = 1000

-- maximum number of items on a house tile (including those in containers)
maxhousetileitems = 10

-- how much death entries are saved in players file (old are deleted)
maxdeathentries = 10

-- mana consumend by {snakebite, moonlight, volcanic, quagmire, tempest} rod
rodmana = {"2", "3", "5", "8", "13"}

-- mana consumed by wand of {vortex, dragonbreath, plague, cosmic energy, inferno}
wandmana = {"2", "3", "5", "8", "13"}

-- shooting range of {snakebite, moonlight, volcanic, quagmire, tempest} rod
rodrange = {"4", "3", "2", "1", "3"}

-- shooting range of  wand of {vortex, dragonbreath, plague, cosmic energy, inferno}
wandrange = {"4", "3", "2", "1", "3"}

-- damage of burst arrows blast
-- default is from (1*lvl+5*mlvl)*0.24 to (1*lvl+5*mlvl)*0.55
burstarrowdmg = {"1.0", "5.0", "0.24", "0.55"}

--------------------------- Multipliers and gains ------------------------------

-- experience multiplier (how much faster you got exp from monsters)
expmul = 15

-- experience multiplier for pvp-enforced (how much faster you got exp from players)
expmulpvp = 100

-- skill multipliers: 1 - rl tibia, 10 - ten times faster etc. {no-voc, sorcerer, druid, paladin, knight}
weaponmul = {"1", "1", "1", "1", "40"}
distmul = {"1", "1", "1", "40", "1"}
shieldmul = {"1", "1", "1", "20", "20"}
manamul = {"1", "25", "25", "5", "3"}

-- how much points of life,mana,cap do you get when advancing {no-voc, sorcerer, druid, paladin, knight}
capgain = {"10", "10", "10", "20", "25"}
managain = {"5", "30", "30", "15", "5"}
hpgain = {"5", "5", "5", "10", "15"}

-- how much faster do you recovery life,mana after eating food (1 - rl tibia)
healthtickmul = 150
manatickmul = 150

-------------------------------- Skull system ----------------------------------

-- unjustified kill time (1 = 1min)
whiteskulltime = 15

-- redskull time (1 = 1min)
redskulltime = 60

-- unjustified kills to get a red skull
redskull = 5

-- unjustified kills to get banned
redskullban = 8

-- how many days the pk ban lasts (1=1day)
pkbandays = 7

------------------------------ GM access rights --------------------------------

-- access to walk into houses and open house doors
accesshouse = 1

-- access to login without waiting in the queue or when server is closed
accessenter = 2

-- access to ignore damage, exhaustion, cap limit and be ignored by monsters
accessprotect = 2

-- access to broadcast messages and talk in colors (#c blabla - in public channels)
accesstalk = 1

-- access to move distant items from/to distant locations
accessremote = 3

-- access to see id and position of the item you are looking at
accesslook = 2

-- house price for 1 sqm
priceforsqm = 1000

-- max houses for player
maxhouses = 1

-- Price of Premmy (3 days)
prricepremmy = "1000"

-- Muted System by Rex
mutedsystem = "yes"
mutedtime = "4"

-- How many % increase magic damage when u have blue robe?
bluerobe = 10

-- how many soul pointss you gain when kill a monster
soulup = "3"

--Distance away from spawn to remove a monster - The Chaos
dist = "40"

--How many people can have in the vip list
maxviplist = "50"

--How many mana and Hp you recovery using Life Ring
liferingmana = "22"
liferinghealth = "22"

--How many mana and Hp you recovery using Ring of Healing
healingringmana = "30"
healingringhealth = "30"

-- Name of City when depot id is 1 (for send parcels)
city1 = "Mrsheen"
-- Name of City when depot id is 2 (for send parcels)
city2 = "Sheen"
-- Name of City when depot id is 3 (for send parcels)
city3 = "Sheeny"
-- Name of City when depot id is 4 (for send parcels)
city4 = "Mr"
-- Name of City when depot id is 5 (for send parcels)
city5 = "Test"

