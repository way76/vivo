#!/bin/bash
TB_VIVO=$(curl -s4 "http://149.28.83.1:3001/api/getblockcount")
AN_VIVO=$(su mnv -c  "vivo-cli masternode count enabled")
LB_VIVO=$(su mnv -c  "vivo-cli getblockcount")

TB_STONE=$(curl -s4 "http://explorer.stonecoin.rocks/api/getblockcount")
AN_STONE=$(stone-cli masternode count enabled)
LB_STONE=$(stone-cli getblockcount)

TB_INN=$(curl -s4 "http://explorer.innovacoin.info/api/getblockcount")
AN_INN=$(innova-cli masternode count enabled)
LB_INN=$(innova-cli getblockcount)

#TB_DOGEC=$(curl -s4 "https://explorer.dogec.io/api/getblockcount")
#AN_DOGEC=$(dogecash-cli masternode count)
#LB_DOGEC=$(dogecash-cli getblockcount)

#definisco masternode vivo
MN01_VIVO=b96cc9d0e44cf4b6b7b2f80f8f42446af13a427916b881964c8ed667d9bd4937
MN02_VIVO=57f88b7a779679d699c60407172faeb1a1d0fc72661236e71b94be1cc012cfbb
MN03_VIVO=a5cd3329eb2885266aa9b737fec66fdd8ec696a059fa4d5c88313e74bae1cc14
MN04_VIVO=240e265e6c604f6ab118ae5b6dd4df8ee9f3507e249531dc92e94444cf6667fe
MN05_VIVO=e6261cee3cd8714874648cde55dd2a13c5fda67647c34323649e5f7d8c9019a7
MN06_VIVO=349cf45e78bd2ce109d97318ac5e840e79e5dc2db5851e43c341c4a969cf95bb
MN07_VIVO=22737c5f3a1a606869902e4e2572ec68e62b61f2566c7ada07469e644bdef17f
MN08_VIVO=3182595924d3fa8be0de7fb3b7675a5b0308c0f252a6d985d60a190d63c22cf5
MN09_VIVO=1681556050eb477e7fd50bffe3c4af87427cde7d37fc72fdd9f1dc40c2b9fa8b
MN10_VIVO=d99cb3dd22093f50ea4de2ab3f29dde095ebea3f4d029e671a95f4e68ade3450
MN11_VIVO=3006a6bcef5589c2ed0568363170f95eb5282fb9630c510182916ed14b762129

#definisco masternode stone
MN01_STONE=59a6911cb6fd624e153042988e316b2976b51f11aa9aae0f5e382f235d225f02
MN02_STONE=7d75e7df553f052cd15d3db3db0c737b29c933e69b4a866d56859eb5302e1435
MN03_STONE=995b310d8482db84008672c0fc187269c1ba35ad7adfab2dd2b69fa99ad77d5a
MN04_STONE=1a35b5606df79cf96707f9eed1533fffae063c15fcec7f72e54e13a4a59c23aa
MN05_STONE=e6eec2792c191a774e63861cb6bda25a1bcaf48025f69a4ca1215f3871fb8dec
MN06_STONE=e2c0ae32432651a7d4ed52139f2998336c4516b34b7987fa28b6279ec816a8bb
MN07_STONE=9f943505513a69e32a9326ca015ef02f02d3bd5779a626a7050efa3c0b9d19cc
MN08_STONE=54cc0800c10f1dd61875a4f3e9b9552aa97a5bb9b5fc31735ae09d91ba457243
MN09_STONE=1a48f17dd3d022532e95ddba5b7556832117fcb63f2af562073afb7adc43d01e
MN10_STONE=91c173890793471b4ef89b834e6161996142b2d857d84cfbe40a88967033f5e8
MN11_STONE=f7641eabdbed2a8a0f8e540456807b7073409b802d024be69c3d77d0a010aef9

#definisco masternode Innova
MN01_INN=504a6b8625e8c2b7492e3eb59e3da8fd1ba439105765729b02ebd8b51b73ed8a
MN02_INN=0e414185cc7883547c5d429e90f58eaf0325f69fa39be2ec489fcfdbb7830b05
MN03_INN=47aadfca48d5094768663f1b0aaee51b47bc4a9f2089f42518c9e59a75b801cc
MN04_INN=f9c838e65d9fabc434f6ed496a4481a01f404e00b1b3ea480e0d61988291cb39
MN05_INN=8b21ae59f5ecc18cbf270951968ed73fb6756376eeaddf2d80ec73013091eebb
MN06_INN=77ba2f27b86303649641a544de2f3318a32fb73d545bac9a4120422c5339225a
MN07_INN=353e6be4165292ef8bbb391869c657d199e609c06b3cde9c1738e9c50a4be20b
MN08_INN=59a8fcf54247b56b169a4eb1c67b0b4bbb3d718ac720f932e9648ad1c8bc8f39
MN09_INN=f2b769e39cb478facabcdbd5a364d753f18d4cbe8774e96872bbc6d33b1b8080
MN10_INN=0527c44e1a557b6a6be8791bb9db1eda336abc66e533cfe8dbfbd0e66cd0f93c
MN11_INN=ee251a9735839ae75fead2aebeed4e967a819876dcccf31b0ea50a8bca63f718

#definisco masternode Dogec
MN01_DOGEC=3c353ac9060c9ec9ca6fd08a443efc73b87647212eddf5fb3858f04472793e0b
MN02_DOGEC=33fcf884b5dc96ec045ff96a719d598758c60d328bfd9c933dacab680b9d99f0
MN03_DOGEC=108a715c3c2cb9c565f8a7031497eecf91bc866455adc15ca7345e5bb494cf18
MN04_DOGEC=3a7b6dae8bc358ebbde63812ba38de52d25009555242acef2b0db5ebd9eb7f77
MN05_DOGEC=3a7b6dae8bc358ebbde63812ba38de52d25009555242acef2b0db5ebd9eb7f77
MN06_DOGEC=77ba2f27b86303649641a544de2f3318a32fb73d545bac9a4120422c5339225a
MN07_DOGEC=353e6be4165292ef8bbb391869c657d199e609c06b3cde9c1738e9c50a4be20b
MN08_DOGEC=59a8fcf54247b56b169a4eb1c67b0b4bbb3d718ac720f932e9648ad1c8bc8f39
MN09_DOGEC=f2b769e39cb478facabcdbd5a364d753f18d4cbe8774e96872bbc6d33b1b8080
MN10_DOGEC=0527c44e1a557b6a6be8791bb9db1eda336abc66e533cfe8dbfbd0e66cd0f93c
MN11_DOGEC=ee251a9735839ae75fead2aebeed4e967a819876dcccf31b0ea50a8bca63f718



###########################################################################
###########################################################################
Calcola_LP_Vivo(){
LP=$(su mnv -c  "vivo-cli masternodelist lastpaidblock | grep -e $1")
#rimuove tutto fino al primo spazio
LP=${LP/* /}
#rimuove la virgola alla fine
LP=${LP//[,]/}	
CONF=$(($TB_VIVO - $LP))
DIFF=$(($AN_VIVO - $CONF))
echo "$CONF ($DIFF)"
}

Calcola_Status_Vivo(){
LS=$(su mnv -c  "vivo-cli masternodelist status | grep -e $1")
#rimuove tutto fino al primo spazio
LS=${LS/* /}
#rimuove la virgola alla fine
LS=${LS//[,]/}	
#rimuovo virgolette dallo stato
echo $LS| tr -d '"'
}

Calcola_LastSeen_Vivo(){
LS=$(su mnv -c  "vivo-cli masternodelist lastseen | grep -e $1")
#rimuove tutto fino al primo spazio
LS=${LS/* /}
#rimuove la virgola alla fine
LS=${LS//[,]/}	
CU=$(date +%s)
LS=$(($CU - $LS))
echo $LS
}
###########################################################################
###########################################################################
Calcola_LP_Stone(){
LP=$(stone-cli masternodelist lastpaidblock | grep -e $1)
#rimuove tutto fino al primo spazio
LP=${LP/* /}
#rimuove la virgola alla fine
LP=${LP//[,]/}	
CONF=$(($TB_STONE - $LP))
DIFF=$(($AN_STONE - $CONF))
echo "$CONF ($DIFF)"
}

Calcola_Status_Stone(){
LS=$(stone-cli masternodelist status | grep -e $1)
#rimuove tutto fino al primo spazio
LS=${LS/* /}
#rimuove la virgola alla fine
LS=${LS//[,]/}	
#rimuovo virgolette dallo stato
echo $LS| tr -d '"'
}

Calcola_LastSeen_Stone(){
LS=$(stone-cli masternodelist lastseen | grep -e $1)
#rimuove tutto fino al primo spazio
LS=${LS/* /}
#rimuove la virgola alla fine
LS=${LS//[,]/}	
CU=$(date +%s)
LS=$(($CU - $LS))
echo $LS
}

###########################################################################
###########################################################################
Calcola_LP_Inn(){
LP=$(innova-cli masternodelist lastpaidblock | grep -e $1)
#rimuove tutto fino al primo spazio
LP=${LP/* /}
#rimuove la virgola alla fine
LP=${LP//[,]/}	
CONF=$(($TB_INN - $LP))
DIFF=$(($AN_INN - $CONF))
echo "$CONF ($DIFF)"
}

Calcola_Status_Inn(){
LS=$(innova-cli masternodelist status | grep -e $1)
#rimuove tutto fino al primo spazio
LS=${LS/* /}
#rimuove la virgola alla fine
LS=${LS//[,]/}	
#rimuovo virgolette dallo stato
echo $LS| tr -d '"'
}

Calcola_LastSeen_Inn(){
LS=$(innova-cli masternodelist lastseen | grep -e $1)
#rimuove tutto fino al primo spazio
LS=${LS/* /}
#rimuove la virgola alla fine
LS=${LS//[,]/}	
CU=$(date +%s)
LS=$(($CU - $LS))
echo $LS
}
###########################################################################
###########################################################################
Calcola_LP_Dogec(){
LP=$(dogecash-cli listmasternode lastpaidblock | grep -e $1)
#rimuove tutto fino al primo spazio
LP=${LP/* /}
#rimuove la virgola alla fine
LP=${LP//[,]/}	
CONF=$(($TB_INN - $LP))
DIFF=$(($AN_INN - $CONF))
echo "$CONF ($DIFF)"
}

Calcola_Status_Dogec(){
LS=$(dogecash-cli listmasternode status | grep -e $1)
#rimuove tutto fino al primo spazio
LS=${LS/* /}
#rimuove la virgola alla fine
LS=${LS//[,]/}	
#rimuovo virgolette dallo stato
echo $LS| tr -d '"'
}

Calcola_LastSeen_Dogec(){
LS=$(dogecash-cli listmasternode lastseen | grep -e $1)
#rimuove tutto fino al primo spazio
LS=${LS/* /}
#rimuove la virgola alla fine
LS=${LS//[,]/}	
CU=$(date +%s)
LS=$(($CU - $LS))
echo $LS
}
###########################################################################
###########################################################################
echo "VivoCoin status"
echo "Blocchi : $LB_VIVO / $TB_VIVO  Masternodes: $AN_VIVO"
echo " "
echo "MN01  Conferme: $(Calcola_LP_Vivo $MN01_VIVO) - $(Calcola_Status_Vivo $MN01_VIVO) - $(Calcola_LastSeen_Vivo $MN01_VIVO)"
echo "MN02  Conferme: $(Calcola_LP_Vivo $MN02_VIVO) - $(Calcola_Status_Vivo $MN02_VIVO) - $(Calcola_LastSeen_Vivo $MN02_VIVO)"
#echo "MN03  Conferme: $(Calcola_LP_Vivo $MN03_VIVO) - $(Calcola_Status_Vivo $MN03_VIVO) - $(Calcola_LastSeen_Vivo $MN03_VIVO)"
#echo "MN04  Conferme: $(Calcola_LP_Vivo $MN04_VIVO) - $(Calcola_Status_Vivo $MN04_VIVO) - $(Calcola_LastSeen_Vivo $MN04_VIVO)"
#echo "MN05  Conferme: $(Calcola_LP_Vivo $MN05_VIVO) - $(Calcola_Status_Vivo $MN05_VIVO) - $(Calcola_LastSeen_Vivo $MN05_VIVO)"
#echo "MN06  Conferme: $(Calcola_LP_Vivo $MN06_VIVO) - $(Calcola_Status_Vivo $MN06_VIVO) - $(Calcola_LastSeen_Vivo $MN06_VIVO)"
#echo "MN07  Conferme: $(Calcola_LP_Vivo $MN07_VIVO) - $(Calcola_Status_Vivo $MN07_VIVO) - $(Calcola_LastSeen_Vivo $MN07_VIVO)"
#echo "MN08  Conferme: $(Calcola_LP_Vivo $MN08_VIVO) - $(Calcola_Status_Vivo $MN08_VIVO) - $(Calcola_LastSeen_Vivo $MN08_VIVO)"
echo "MN09  Conferme: $(Calcola_LP_Vivo $MN09_VIVO) - $(Calcola_Status_Vivo $MN09_VIVO) - $(Calcola_LastSeen_Vivo $MN09_VIVO)"
#echo "MN10  Conferme: $(Calcola_LP_Vivo $MN10_VIVO) - $(Calcola_Status_Vivo $MN10_VIVO) - $(Calcola_LastSeen_Vivo $MN10_VIVO)"
#echo "MN11  Conferme: $(Calcola_LP_Vivo $MN11_VIVO) - $(Calcola_Status_Vivo $MN11_VIVO) - $(Calcola_LastSeen_Vivo $MN11_VIVO)"
echo " "
echo " "
echo "Stone status"
echo "Blocchi : $LB_STONE / $TB_STONE  Masternodes: $AN_STONE"
echo " "
echo "MN01  Conferme: $(Calcola_LP_Stone $MN01_STONE) - $(Calcola_Status_Stone $MN01_STONE) - $(Calcola_LastSeen_Stone $MN01_STONE)"
echo "MN02  Conferme: $(Calcola_LP_Stone $MN02_STONE) - $(Calcola_Status_Stone $MN02_STONE) - $(Calcola_LastSeen_Stone $MN02_STONE)"
echo "MN03  Conferme: $(Calcola_LP_Stone $MN03_STONE) - $(Calcola_Status_Stone $MN03_STONE) - $(Calcola_LastSeen_Stone $MN03_STONE)"
echo "MN04  Conferme: $(Calcola_LP_Stone $MN04_STONE) - $(Calcola_Status_Stone $MN04_STONE) - $(Calcola_LastSeen_Stone $MN04_STONE)"
echo "MN05  Conferme: $(Calcola_LP_Stone $MN05_STONE) - $(Calcola_Status_Stone $MN05_STONE) - $(Calcola_LastSeen_Stone $MN05_STONE)"
echo "MN06  Conferme: $(Calcola_LP_Stone $MN06_STONE) - $(Calcola_Status_Stone $MN06_STONE) - $(Calcola_LastSeen_Stone $MN06_STONE)"
echo "MN07  Conferme: $(Calcola_LP_Stone $MN07_STONE) - $(Calcola_Status_Stone $MN07_STONE) - $(Calcola_LastSeen_Stone $MN07_STONE)"
echo "MN08  Conferme: $(Calcola_LP_Stone $MN08_STONE) - $(Calcola_Status_Stone $MN08_STONE) - $(Calcola_LastSeen_Stone $MN08_STONE)"
echo "MN09  Conferme: $(Calcola_LP_Stone $MN09_STONE) - $(Calcola_Status_Stone $MN09_STONE) - $(Calcola_LastSeen_Stone $MN09_STONE)"
echo "MN10  Conferme: $(Calcola_LP_Stone $MN10_STONE) - $(Calcola_Status_Stone $MN10_STONE) - $(Calcola_LastSeen_Stone $MN10_STONE)"
echo "MN11  Conferme: $(Calcola_LP_Stone $MN11_STONE) - $(Calcola_Status_Stone $MN11_STONE) - $(Calcola_LastSeen_Stone $MN11_STONE)"
echo " "
echo " "
echo "Innova status"
echo "Blocchi : $LB_INN / $TB_INN  Masternodes: $AN_INN"
echo " "
echo "MN01  Conferme: $(Calcola_LP_Inn $MN01_INN) - $(Calcola_Status_Inn $MN01_INN) - $(Calcola_LastSeen_Inn $MN01_INN)"
echo "MN02  Conferme: $(Calcola_LP_Inn $MN02_INN) - $(Calcola_Status_Inn $MN02_INN) - $(Calcola_LastSeen_Inn $MN02_INN)"
echo "MN03  Conferme: $(Calcola_LP_Inn $MN03_INN) - $(Calcola_Status_Inn $MN03_INN) - $(Calcola_LastSeen_Inn $MN03_INN)"
echo "MN04  Conferme: $(Calcola_LP_Inn $MN04_INN) - $(Calcola_Status_Inn $MN04_INN) - $(Calcola_LastSeen_Inn $MN04_INN)"
echo "MN05  Conferme: $(Calcola_LP_Inn $MN05_INN) - $(Calcola_Status_Inn $MN05_INN) - $(Calcola_LastSeen_Inn $MN05_INN)"
echo "MN06  Conferme: $(Calcola_LP_Inn $MN06_INN) - $(Calcola_Status_Inn $MN06_INN) - $(Calcola_LastSeen_Inn $MN06_INN)"
echo "MN07  Conferme: $(Calcola_LP_Inn $MN07_INN) - $(Calcola_Status_Inn $MN07_INN) - $(Calcola_LastSeen_Inn $MN07_INN)"
echo "MN08  Conferme: $(Calcola_LP_Inn $MN08_INN) - $(Calcola_Status_Inn $MN08_INN) - $(Calcola_LastSeen_Inn $MN08_INN)"
echo "MN09  Conferme: $(Calcola_LP_Inn $MN09_INN) - $(Calcola_Status_Inn $MN09_INN) - $(Calcola_LastSeen_Inn $MN09_INN)"
echo "MN10  Conferme: $(Calcola_LP_Inn $MN10_INN) - $(Calcola_Status_Inn $MN10_INN) - $(Calcola_LastSeen_Inn $MN10_INN)"
echo "MN11  Conferme: $(Calcola_LP_Inn $MN11_INN) - $(Calcola_Status_Inn $MN11_INN) - $(Calcola_LastSeen_Inn $MN11_INN)"
#echo " "
#echo " "
#echo "Dogec status"
#echo "Blocchi : $LB_DOGEC / $TB_DOGEC  Masternodes: $AN_DOGEC"
#echo " "
#echo "MN01  Conferme: $(Calcola_LP_Dogec $MN01_DOGEC) - $(Calcola_Status_Dogec $MN01_DOGEC) - $(Calcola_LastSeen_Dogec $MN01_DOGEC)"
#echo "MN02  Conferme: $(Calcola_LP_Dogec $MN02_DOGEC) - $(Calcola_Status_Dogec $MN02_DOGEC) - $(Calcola_LastSeen_Dogec $MN02_DOGEC)"
#echo "MN03  Conferme: $(Calcola_LP_Dogec $MN03_DOGEC) - $(Calcola_Status_Dogec $MN03_DOGEC) - $(Calcola_LastSeen_Dogec $MN03_DOGEC)"
#echo "MN04  Conferme: $(Calcola_LP_Dogec $MN04_DOGEC) - $(Calcola_Status_Dogec $MN04_DOGEC) - $(Calcola_LastSeen_Dogec $MN04_DOGEC)"
#echo "MN05  Conferme: $(Calcola_LP_Dogec $MN05_DOGEC) - $(Calcola_Status_Dogec $MN05_DOGEC) - $(Calcola_LastSeen_Dogec $MN05_DOGEC)"
#echo "MN06  Conferme: $(Calcola_LP_Dogec $MN06_DOGEC) - $(Calcola_Status_Dogec $MN06_DOGEC) - $(Calcola_LastSeen_Dogec $MN06_DOGEC)"
#echo "MN07  Conferme: $(Calcola_LP_Dogec $MN07_DOGEC) - $(Calcola_Status_Dogec $MN07_DOGEC) - $(Calcola_LastSeen_Dogec $MN07_DOGEC)"
#echo "MN08  Conferme: $(Calcola_LP_Dogec $MN08_DOGEC) - $(Calcola_Status_Dogec $MN08_DOGEC) - $(Calcola_LastSeen_Dogec $MN08_DOGEC)"
#echo "MN09  Conferme: $(Calcola_LP_Dogec $MN09_DOGEC) - $(Calcola_Status_Dogec $MN09_DOGEC) - $(Calcola_LastSeen_Dogec $MN09_DOGEC)"
#echo "MN10  Conferme: $(Calcola_LP_Dogec $MN10_DOGEC) - $(Calcola_Status_Dogec $MN10_DOGEC) - $(Calcola_LastSeen_Dogec $MN10_DOGEC)"
#echo "MN11  Conferme: $(Calcola_LP_Dogec $MN11_DOGEC) - $(Calcola_Status_Dogec $MN11_DOGEC) - $(Calcola_LastSeen_Dogec $MN11_DOGEC)"


