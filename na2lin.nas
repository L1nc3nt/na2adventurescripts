#first_start
 cpemsg bot1 &fDash:&a■■■■■■■ 
 definehotkey dash|E

#input
 if runArg1|=|dash msg RAN!
 if runArg1|=|dash jump #dashMechanic

#dashMechanic
 motd horspeed=4 model=humanoid model=animerun
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
 motd horspeed=1 model=humanoid model=animerun
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
