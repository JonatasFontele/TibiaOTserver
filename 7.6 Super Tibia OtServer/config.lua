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
loginmsg = "(Do you want say revolution? get out you are a loser ;D) Seja Superior.."

-- the port otserv listens on
port = "7171"

-- name of our server
servername = "Superiores OTServer"

-- name of the owner of our server
ownername = "Jony"

-- email of the owner of our server
owneremail = ""

-- the url for more server info
url = ""

-- the location of the server
location = "Brazil"

-- the ip the server should redirect too
ip = "5.48.182.144"

-- The messagebox you sometimes get before you choose characters
motd = "Welcome to Jony´s Server"
motdnum="0"

-- use md5 passwords for accounts, yes/no
md5passwords = "no"

-- world type. options: pvp, no-pvp, pvp-enforced
worldtype = "pvp"

-- max number of players allowed
maxplayers = "30"

-- exhausted time in ms (1000 = 1sec)
exhausted = 100

-- exhaustion time for healing spells (1000 = 1sec)
exhaustedheal = 100

-- how many ms to add if the player is already exhausted and tries to cast a spell (1000 = 1sec)
exhaustedadd = 10

-- how long does the player has to stay out of fight to get pz unlocked in ms (1000 = 1sec)
pzlocked = 10*1000

-- allow multiple logins of the same char
allowclones = 0

-- vocation names
vocations = {"a sorcerer", "a druid", "a paladin", "a knight"}
promoted_vocations = {"a master sorcerer", "an elder druid", "a royal paladin", "an elite knight"}


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

------------------------- Neverland basic configuration ---------------------------

-- name of your world (seen on the character list when logging in)
worldname = "Supérior World"

-- how often do server saves it's state (0 = off, 5 = 5min, 60 = hour)
autosave = 5

-- do you want to enable cap system? (yes/no)
capsystem = "no"

-- do you want players to learn spells before they can use them? (yes/no)
learnspells = "no"

-- do you want to give premium account to all players? (yes/no)
freepremmy = "yes"

-- do you want premium players to wait in queue as others? (yes/no)
queuepremmy = "yes"

-- how much % of {exp, mana, skill, eq, bp} do you lose when dying
diepercent = {"10", "7", "7", "7", "100"}
diebless0 = 10

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
maxsummons = 6

-- do you want to give summons for all vocations? (yes/no)
summonsallvoc = "no"

-- chance of losing a spear when shot (0 - none lost, 100000 - all lost)
spearlosechance = 0

-- anti-afk - maximum idle time to kick player (1 = 1min)
kicktime = 15

-- maximum number of items player can keep in his/her depot
maxdepotitems = 1000

-- maximum number of items on a house tile (including those in containers)
maxhousetileitems = 50

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

-- remove ammunation? (bolts/arrows)
removeammunation = "no"

-- remove rune charges? (sd/hmm/gfb)
removerunecharges = "no"

--------------------------- Multipliers and gains ------------------------------

-- experience multiplier (how much faster you got exp from monsters)
expmul = 30

-- experience multiplier for pvp-enforced (how much faster you got exp from players)
expmulpvp = 20

-- skill multipliers: 1 - rl tibia, 10 - ten times faster etc. {no-voc, sorcerer, druid, paladin, knight}
weaponmul = {"1", "1", "1", "1", "40"}
distmul = {"1", "1", "1", "40", "1"}
shieldmul = {"1", "1", "1", "40", "40"}
manamul = {"1", "20", "20", "18", "18"}

-- how much points of life,mana,cap do you get when advancing {no-voc, sorcerer, druid, paladin, knight}
capgain = {"10", "10", "10", "20", "25"}
managain = {"5", "30", "30", "15", "5"}
hpgain = {"5", "5", "5", "10", "15"}

-- how much faster do you recovery life,mana after eating food (1 - rl tibia)
healthtickmul = 500
manatickmul = 500
-------------------------------- Skull system ----------------------------------

-- how many unjustified kills to get a red skull
redunjust = 3

-- how many unjustified kills to get banned
banunjust = 6

-- how long do you have white skull after attacking player (1 = 1min)
hittime = 1

-- how long do you have white skull after killing player (1 = 1min)
whitetime = 15

-- how long do you have red skull (1 = 1min)
redtime = 6*60

-- how long do you have to wait to lose 1 unjustified kill (1 = 1min)
fragtime = 12*60
------------------------------ GM access rights --------------------------------

-- access to walk into houses and open house doors
accesshouse = 4

-- access to login without waiting in the queue or when server is closed
accessenter = 2

-- access to ignore damage, exhaustion, cap limit and be ignored by monsters
accessprotect = 4

-- access to broadcast messages and talk in colors (#c blabla - in public channels)
accesstalk = 1

-- access to move distant items from/to distant locations
accessremote = 3

-- access to see id and position of the item you are looking at
accesslook = 2
-- house price for 1 sqm
priceforsqm = 100


-- max houses for player
maxhouses = 1

--Distance away from spawn to remove a monster - The Chaos
dist = 80

-- Name of City when depot id is 1 (for send parcels)
city1 = "neverland"
-- Name of City when depot id is 2 (for send parcels)
city2 = "gayland"
-- Name of City when depot id is 3 (for send parcels)
city3 = "pokemonland"
-- Name of City when depot id is 4 (for send parcels)
city4 = "loosikhouse"
-- Name of City when depot id is 5 (for send parcels)
city5 = "bosshouse"

