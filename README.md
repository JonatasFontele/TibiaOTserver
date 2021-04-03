# TibiaOTserver
Sun Version 7.0

Based on YurOTS and Servfull 3.0

Features: new npcs and quests, based on Colex scripts and forums.

Instruções: descompacte esses arquivos na sua pasta do ot, FORA DA PASTA "DATA", e substitua poe tudo o que estiver dentro. Lembre-se de fazer um backup do seu server antes de dar este upgrade.

UPGRADE EXCLUSIVO PARA KEMEX OTSERVER

NENHUM DIREITO RESERVADO

Copyleft de 1900 e nada

Enjoy!

> GM commands:

/a x		jump forward x squares

/B msg		broadcast Yurezssage to all players

/b nick		ban player on ip

/ban nick	ban players character

/c nick		teleport player to gm

/clean		remove portable items from the ground

/closeserver	only gms can enter

/down		teleport down

/getonline	list players online with levels

/goto nick	teleport near player

/goto x y z	teleport to position

/i id count	create item

/info nick	show info about player

/invisible	switch gm invisibility

/kick nick	kick player

/max x		set max number of players online

/m name		place monster

/openserver	everyone can enter

/owner nick	set owner of the house you are in

/owner		clear owner of the house you are in

/pos		shows your position

/premmy x nick	give player x hours of premium account

/promote nick	promote player

/pvp x		set pvp to no=0, normal=1, enforced=2

/s name		place npc

/save		force server save

/send nick, x y z	teleport player to position

/shutdown m	shedule server shutdown in m minutes

/summon name	place summon

/t		go to temple

/up		teleport up

/bc   Talk in Colors (ex: "/bc white Testando..", ai vc fala em branco)


> Player commands:

!exp		show exp for level

!mana		show mana for magic level

!online		show players online

!house		reload house rights

!frags		show unjustified kills

!report msg	bug report to hoster (nao eh usado, por ter o NPC Reportador)

!uptime		show server uptime

!premmy		show premium time


Guild Master keywords:

found		founding a new guild

invite		invite player to e guild

kick, exclude	exclude player from a guild

join		join guild that invited Yurez

leave		leave my guild

pass		pass leadership to another Yurezmber

vice		promote player to vice-leader

member		denote vice-leader to regular Yurezmber

nick, title	change Yurezmber's nick



> House spells:

aleta gom	edit owner (can be only one)

aleta som	edit sub-owners

aleta grav	edit door-owner (standing near door)

aleta sio	edit guests

alana sio "Name	kick player from a house

alana sio	kick myself from a house


> Notes:
- guilds and houses are saved during server save, not when player logouts,
- if you want to place boss use /m, because /summon makes him your summon (no loot),
- items 1740,1747,1748,1749,1770 are for quests and cannot be moved nor picked (attribute questbox="1" in items.xml),
- ip ban lasts until server restart, character ban lasts until you set banned to 0 in player's file,
- when you switch ring from ground with ring on you the one from you still glimYurezrs on the ground (no side effect),
- when you change light item (torch, candle, etc.) you lose effect of light spell,
- plague-, magic-, flame- and poisonthrowers are causing debugs (don't use them).


> Known bugs:
- when you jump into player while beeing /invisible he gets debug,
- when you change world type from pvp to no-pvp players that have selected target earlier can still attack (until they lose target),
- soYurez edges dissappear under blood splashes.
