//each battle pet adds more health and skills, damage, etc.
//whichever member of your party that you place in front will do the attacks
//certain enemies will target certain parts of your party's arrangement for example: 1|2|target is 3|4
//the inverse is also true, certain skills you have can only target certain parts of the enemies ararangement
//depending of course on how you arrange your party.

#first_start
// cpemsg bot1 &fDash:&a■■■■■■■ 
// definehotkey dash|E
// skins
 set nomad-skin https://i.imgur.com/x5hO1df.png
// numbers
 set msg-Delay 800
 set hpbar-Delay 333
 set myHealth 0
 set mxMYhealth 10
 set skullHealth 0
 set mxSKULLhealth 5
 set brineHealth 0
 set mxBRINEhealth 7
 set dreamHealth 0
 set mxDREAMhealth 11
// start!
 call #spawn_tmp_nomad1
 call #healthBarIntro
 msg The code has run.
quit

#spawn_tmp_nomad1
 cmd tbot add bot1_nomad 17 70 98 239 0 {nomad-skin} Nomad &s
 cmd tbot skin bot1_nomad {nomad-skin}
quit

#input
 if runArg1|=|dash msg RAN!
 if runArg1|=|dash jump #dashMechanic
quit

#dashMechanic
 motd horspeed=4
 changemodel animerun
 cpemsg bot1 &fDash:&a■■■■■■&4■ 
 delay 120
 cpemsg bot1 &fDash:&a■■■■■&4■■ 
 delay 120
 cpemsg bot1 &fDash:&a■■■■&4■■■ 
 delay 120
 cpemsg bot1 &fDash:&a■■■&4■■■■ 
 delay 120
 cpemsg bot1 &fDash:&a■■&4■■■■■ 
 delay 120
 cpemsg bot1 &fDash:&a■&4■■■■■■ 
 delay 120
 cpemsg bot1 &fDash:&4■■■■■■■ 
 motd horspeed=1
 changemodel
 delay 200
 cpemsg bot1 &fDash:&a■&4■■■■■■ 
 delay 200
 cpemsg bot1 &fDash:&a■■&4■■■■■ 
 delay 200
 cpemsg bot1 &fDash:&a■■■&4■■■■ 
 delay 200
 cpemsg bot1 &fDash:&a■■■■&4■■■ 
 delay 200
 cpemsg bot1 &fDash:&a■■■■■&4■■ 
 delay 200
 cpemsg bot1 &fDash:&a■■■■■■&4■ 
 delay 200
 cpemsg bot1 &fDash:&a■■■■■■■ 
quit

#healthBarIntro
 cpemsg bot1 &fHealth:&0♥
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m╝
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥&0♥
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥╝
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥♥&0♥
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥♥╝
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥♥♥&0♥
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥♥♥╝
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥♥♥♥&0♥
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥♥♥♥╝
 delay {hpbar-Delay}
 cpemsg bot1 &fHealth:&m♥♥♥♥♥
 set myHealth 10
quit

#10-showHP
 cpemsg bot1 &fHealth:&m♥♥♥♥♥
quit
#9-showHP
 cpemsg bot1 &fHealth:&m♥♥♥♥╝
quit
#8-showHP
 cpemsg bot1 &fHealth:&m♥♥♥♥&0♥
quit
#7-showHP
 cpemsg bot1 &fHealth:&m♥♥♥╝&0♥
quit
#6-showHP
 cpemsg bot1 &fHealth:&m♥♥♥&0♥♥
quit
#5-showHP
 cpemsg bot1 &fHealth:&m♥♥╝&0♥♥
quit
#4-showHP
 cpemsg bot1 &fHealth:&m♥♥&0♥♥♥
quit
#3-showHP
 cpemsg bot1 &fHealth:&m♥╝&0♥♥♥
quit
#2-showHP
 cpemsg bot1 &fHealth:&m♥&0♥♥♥♥
quit
#1-showHP
 cpemsg bot1 &fHealth:&m╝&0♥♥♥♥
quit
#0-showHP
 cpemsg bot1 &fHealth:&m&0♥♥♥♥♥
quit

#healthBAR-CHANGE
 set AMNT {runArg1}
 if AMNT|=|0 quit
 set loss-gain {runArg2} //Boolean 0 or 1
 set hp {myHealth}
 if loss-gain|=|0 setsub hp {AMNT}
 if loss-gain|=|1 setadd hp {AMNT}
 if loss-gain|=|0 msg &xTook {AMNT} points of &pDAMAGE.
 if loss-gain|=|1 msg &Healed {AMNT} points of &aHEALTH.
 #hpbar-STACK
  if myHealth|=|0 quit
  if myHealth|=|mxMYhealth quit
  if loss-gain|=|0 setsub myHealth 1
  if loss-gain|=|1 setadd myHealth 1
  delay {hpDELTA}
  call #{myHealth}-showHP
  ifnot myHealth|=|hp jump #hpbar-STACK
quit

//oss #print-this|{package}
#print-this
 msg {runArg1}
quit

#nomad_Dialog_1
 cmd tbot ai bot1_nomad stare
 msg &sNomad:&7Oh, if it isn't &uLincent&7!!
 delay {msg-Delay}
 msg &sNomad:&7Mayhaps we could make an exchange, just like old times!!
 delay {msg-Delay}
 msg &sNomad:&7The bridge out of here requires you to have a &ePASSPORT..
 delay {msg-Delay}
 msg &sNomad:&7I will happily provide you one if you transfer a certain &9TREASURE &7hidden in one of these buildings.
 delay {msg-Delay}
 delay {msg-Delay}
 cmd tbot ai bot1_nomad move 17 70 98
 cmd tbot summon bot1_nomad 17 70 98 239 0
quit
