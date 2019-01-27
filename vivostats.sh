#!/bin/bash
TB_VIVO=$(curl -s4 "http://149.28.83.1:3001/api/getblockcount")
AN=$(su mnv -c  "vivo-cli masternode count enabled")
LB_VIVO=$(su mnv -c  "vivo-cli getblockcount")

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


Calcola_LP_Vivo(){
LP=$(su mnv -c  "vivo-cli masternodelist lastpaidblock | grep -e $1")
#rimuove tutto fino al primo spazio
LP=${LP/* /}
#rimuove la virgola alla fine
LP=${LP//[,]/}	
CONF=$(($TB_VIVO - $LP))
DIFF=$(($AN - $CONF))
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

LS01=$(Calcola_LastSeen_Vivo $MN01_VIVO)
LS02=$(Calcola_LastSeen_Vivo $MN02_VIVO)
#LS03=$(Calcola_LastSeen_Vivo $MN03_VIVO)
#LS04=$(Calcola_LastSeen_Vivo $MN04_VIVO)
#LS05=$(Calcola_LastSeen_Vivo $MN05_VIVO)
#LS06=$(Calcola_LastSeen_Vivo $MN06_VIVO)
#LS07=$(Calcola_LastSeen_Vivo $MN07_VIVO)
#LS08=$(Calcola_LastSeen_Vivo $MN08_VIVO)
LS09=$(Calcola_LastSeen_Vivo $MN09_VIVO)
#LS10=$(Calcola_LastSeen_Vivo $MN10_VIVO)
#LS11=$(Calcola_LastSeen_Vivo $MN11_VIVO)



ST01=$(Calcola_Status_Vivo $MN01_VIVO)
ST02=$(Calcola_Status_Vivo $MN01_VIVO)
#ST03=$(Calcola_Status_Vivo $MN01_VIVO)
#ST04=$(Calcola_Status_Vivo $MN01_VIVO)
#ST05=$(Calcola_Status_Vivo $MN01_VIVO)
#ST06=$(Calcola_Status_Vivo $MN01_VIVO)
#ST07=$(Calcola_Status_Vivo $MN01_VIVO)
#ST08=$(Calcola_Status_Vivo $MN01_VIVO)
ST09=$(Calcola_Status_Vivo $MN01_VIVO)
#ST10=$(Calcola_Status_Vivo $MN01_VIVO)
#ST11=$(Calcola_Status_Vivo $MN01_VIVO)


LP01=$(Calcola_LP_Vivo $MN01_VIVO)
LP02=$(Calcola_LP_Vivo $MN02_VIVO)
#LP03=$(Calcola_LP_Vivo $MN03_VIVO)
#LP04=$(Calcola_LP_Vivo $MN04_VIVO)
#LP05=$(Calcola_LP_Vivo $MN05_VIVO)
#LP06=$(Calcola_LP_Vivo $MN06_VIVO)
#LP07=$(Calcola_LP_Vivo $MN07_VIVO)
#LP08=$(Calcola_LP_Vivo $MN08_VIVO)
LP09=$(Calcola_LP_Vivo $MN09_VIVO)
#LP10=$(Calcola_LP_Vivo $MN10_VIVO)
#LP11=$(Calcola_LP_Vivo $MN11_VIVO)

echo "Blocchi : $LB_VIVO / $TB_VIVO  Masternodes: $AN"
echo " "
echo "MN01  Conferme: $LP01 - $ST01 - $LS01"
echo "MN02  Conferme: $LP02 - $ST02 - $LS02"
#echo "MN03  Conferme: $LP03 - $ST03 - $LS03"
#echo "MN04  Conferme: $LP04 - $ST04 - $LS04"
#echo "MN05  Conferme: $LP05 - $ST05 - $LS05"
#echo "MN06  Conferme: $LP06 - $ST06 - $LS06"
#echo "MN07  Conferme: $LP07 - $ST07 - $LS07"
#echo "MN08  Conferme: $LP08 - $ST08 - $LS08"
#echo "MN09  Conferme: $LP09 - $ST09 - $LS09"
#echo "MN010 Conferme: $LP10 - $ST10 - $LS10"
#echo "MN011 Conferme: $LP11 - $ST11 - $LS11"
