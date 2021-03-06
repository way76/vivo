#!/bin/bash

###########################################################################
###########################################################################
Calcola_Attivi_Snd()
{
        AN=$(snodecoin-cli masternode count)
        set -- $AN
        AN=$9
        AN=${AN//[,]/}
        echo "$AN"
}


Calcola_Attivi_Dogec()
{
        AN=$(dogecash-cli masternode count)
        a=( $AN )
        AN=${a[12]}
        AN=${AN//[,]/}
        echo "$AN"
}







#TB_VIVO=$(curl -s4 "http://149.28.83.1:3001/api/getblockcount")
#AN_VIVO=$(su mnv -c  "vivo-cli masternode count enabled")
#LB_VIVO=$(su mnv -c  "vivo-cli getblockcount")

TB_STONE=$(curl -s4 "http://explorer.stonecoin.rocks/api/getblockcount")
AN_STONE=$(stone-cli masternode count enabled)
LB_STONE=$(stone-cli getblockcount)

#TB_INN=$(curl -s4 "http://explorer.innovacoin.info/api/getblockcount")
#AN_INN=$(innova-cli masternode count enabled)
#LB_INN=$(innova-cli getblockcount)

TB_SND=$(curl -s4 "https://explorer.snode.co/api/getblockcount")
AN_SND=$(Calcola_Attivi_Snd) 
LB_SND=$(snodecoin-cli getblockcount)

TB_DOGEC=$(curl -s4 "https://explorer.dogec.io/api/getblockcount")
TB_DOGEC=$(curl -s4 "https://api.dogec.io/api/getblockcount")
AN_DOGEC=$(Calcola_Attivi_Dogec)
LB_DOGEC=$(dogecash-cli getblockcount)

#definisco masternode vivo
MN01_VIVO=6fa76b8ecb2a5adaad4e2aa0673c3987d852828f0bec38d29681146648ec3cc8
MN02_VIVO=f62f36bf014362d23f062f4a75b11a8a287cda869d2e1fafba949fd5169326aa
MN03_VIVO=215c5a3df098bc3bbe7193f7edbf2ff475ca725ea2f0ce61be76e69c71754c3e
MN04_VIVO=7e1ec3247d19f8fcbb1ab33c746dbdd38bade61292fba3970b10a53841aab754
MN05_VIVO=2811b4f70e692f853880c6ad71a02f861d12607b23a09843f8134cc4971c3873
MN06_VIVO=5e19964393b471eed7807bd133ceab8097f32fac92d5c2bc84c8f4852075aabd
MN07_VIVO=d141bd7706b86c1e9bda8c703532904b5e460fedbd614b6049f0c4a0fbc9d3a1
MN08_VIVO=9f56ab9a727a5779f27f0640661f8fcc949660fee2e5d6e8de9c3f1c66feb3bc
MN09_VIVO=48069417377ff4240cbf071685448a833ccca49fb13c577ea8b225c971bc7592
MN10_VIVO=362be0ca9bc137729a43bdd514402765ad0438e0958d71b78ab9886e2581e839
MN11_VIVO=fd0ac45d172b73795e9d3755a444a9e75eba082579f971b55309827123cf17e8
MN12_VIVO=f1a38109e2d9496be5462a7bda2d92e176e6503128df87b97363f86743a167fc
MN13_VIVO=ac410ec434632bc5c8f5d66a251ce945d657ad9cf8051bfc06ee2d05d2c04ac3
MN14_VIVO=6fa5662cdd2d78cdd255e9c2059b116838c4c49da0058cf7f70aa7a5b9304dfb
MN15_VIVO=943c067c2dd8037199edb4aa98fd0d53ed0657e14f3b97cddf9d94613278b6de
MN16_VIVO=1681556050eb477e7fd50bffe3c4af87427cde7d37fc72fdd9f1dc40c2b9fa8b
MN17_VIVO=b96cc9d0e44cf4b6b7b2f80f8f42446af13a427916b881964c8ed667d9bd4937
MN18_VIVO=57f88b7a779679d699c60407172faeb1a1d0fc72661236e71b94be1cc012cfbb
MN19_VIVO=9f7d4732c386d76d91b78a61c29f0b83c8904fdde81cb6d31ec2e6308459338b
MN20_VIVO=2865988c23a8b9535250af9d7a538ee2d0cd0db4620b3b23e12e7a728661e085

#definisco masternode stone
MN01_STONE=59a6911cb6fd624e153042988e316b2976b51f11aa9aae0f5e382f235d225f02
MN02_STONE=995b310d8482db84008672c0fc187269c1ba35ad7adfab2dd2b69fa99ad77d5a
MN03_STONE=e2c0ae32432651a7d4ed52139f2998336c4516b34b7987fa28b6279ec816a8bb
MN04_STONE=200516a8458af2cc3876b4e29e4bffff0453886397da503763619e3bea8cfc3c
MN05_STONE=7d75e7df553f052cd15d3db3db0c737b29c933e69b4a866d56859eb5302e1435
MN06_STONE=fac5df2faa296f834931221245e1299b1556b97e6b85e038c1f7468e9e7eac11
MN07_STONE=1a35b5606df79cf96707f9eed1533fffae063c15fcec7f72e54e13a4a59c23aa
MN08_STONE=03ca24ff0a42fe3ec89119a0cf7ad4bb33d06c1b73f69e9ebb993814a85aad52
MN09_STONE=08820f42d8d430149b7d133c4330a9922e047635aaa7447c522030622d924abe
MN10_STONE=9f943505513a69e32a9326ca015ef02f02d3bd5779a626a7050efa3c0b9d19cc
MN11_STONE=54cc0800c10f1dd61875a4f3e9b9552aa97a5bb9b5fc31735ae09d91ba457243
MN12_STONE=1a48f17dd3d022532e95ddba5b7556832117fcb63f2af562073afb7adc43d01e
MN13_STONE=91c173890793471b4ef89b834e6161996142b2d857d84cfbe40a88967033f5e8
MN14_STONE=f7641eabdbed2a8a0f8e540456807b7073409b802d024be69c3d77d0a010aef9


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
MN01_DOGEC=DHGZLafWBHscpTseLVBm58UDFcAwYmf3yr
MN02_DOGEC=
MN03_DOGEC=DUG29eHSzPsdQ3omM9KTPP8xw3M3v58D6g
MN04_DOGEC=
MN05_DOGEC=DRMyXZPj1DjvPDwQ8g7eqDPb33N8fcfgvA
MN06_DOGEC=
MN07_DOGEC=DDiScS5Am1XapDiVCN33CPyj1Z51Ynyg6Z
MN08_DOGEC=DCtfsV4KYK7e9MhZRwPRHGwJ4y93AuVttH
MN09_DOGEC=
MN10_DOGEC=DB3a7q2Z6srh8zSkmeA1an9zfP3rLypJ5p
MN11_DOGEC=
MN12_DOGEC=
MN13_DOGEC=DHM9xTzXMnDCeiGpmMmqrsNPMa1sJmvfaA
MN14_DOGEC=


#definisco masternode SND
MN01_SND=SVTdsVXqD2XbcwrUpddLnXtPFrK3vvZdM5
MN02_SND=SZYVxs1uVTsUFyg5okNJRHugPhRusX7tP7
MN03_SND=SShnC4ZHEi4fVxtDmATDYLrbB4JeYKZJrG
MN04_SND=SdFRjeSgjVJaKbj8KN3Uxpy7k6gvAzaM9a
MN05_SND=SXqBQCNPDkHujpLFoKLYfX1JQoYBc23e5p
MN06_SND=STRCmBkTVxGmcDgVThiw6MfJMtrD9DHdei
MN07_SND=SQAqPdZ54SaooAKMFAU6vzfuny8uPMz2SY
MN08_SND=SSoXYCJpE1eY7XJu7q7ue98ysfXRtJ6V6x
MN09_SND=SXpUDzySQUqXcNrQH6c89nRntBFuRnY8SZ
MN10_SND=SN9RTwamUBa7N1YfZZXF9R9Qd9rktup7Ct
MN11_SND=STiusKMLjjXE43oDvLfNAnfgLz8WBer2sc
MN12_SND=SUkDM3FV9YiYKPmP8pNjvZni9HjfMjdJ92
MN13_SND=SgQLcXHh7gQeJ1PxgxRUHCnmqZr7tAdKYy
MN14_SND=SX1xZQLpDwPPd7mSwV7MngSLNXZUuTy1MG



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
let "TN=$AN_DOGEC + $AN_DOGEC -10"
LP=$(dogecash-cli  getmasternodewinners $TN | grep $1 -A 2  -B 2)
# "nHeight" : 183251,
#        "winner" : {
#            "address" : "DUG29eHSzPsdQ3omM9KTPP8xw3M3v58D6g",
#            "nVotes" : 10
#        }

#divido la risposta in array e conservo 23esimo elemento
a=( $LP )
#LP=${a[2]}
e=$(echo "${#a[@]}")

LP=${a[e-11]}
LP=${LP//[,]/}
CONF=$(($TB_DOGEC - $LP))
DIFF=$(($AN_DOGEC - $CONF))
echo "$CONF ($DIFF)"

}

Calcola_Status_Dogec(){
LS=$(dogecash-cli listmasternodes  | grep $1 -A 5  -B 6)
#{
#        "rank" : 304,
#        "network" : "ipv4",
#        "txhash" : "3c353ac9060c9ec9ca6fd08a443efc73b87647212eddf5fb3858f04472793e0b",
#        "outidx" : 1,
#        "status" : "ENABLED",
#        "addr" : "DHGZLafWBHscpTseLVBm58UDFcAwYmf3yr",
#        "ip:port" : "80.211.213.40:6740",
#        "version" : 72018,
#        "lastseen" : 1549109015,
#        "activetime" : 5551247,
#        "lastpaid" : 1549098756
#
#divido la risposta in array e conservo 23esimo elemento
#echo "Lp ricevuto :$LP:"
a=( $LS )
LS=${a[15]}
LS=${LS//[,]/}
echo $LS| tr -d '"'
#echo "$LS"
}


Calcola_LastSeen_Dogec(){
LS=$(dogecash-cli listmasternodes  | grep $1 -A 5  -B 6)
#ottengo una risposta tipo
# {
#    "rank": 136,
#    "network": "ipv4",
#    "txhash": "b0ca9bc6b65df74d1a750d2208fca7a1f26b33fa0da21d6eb355e551a9197c1c",
#    "outidx": 0,
#    "status": "ENABLED",
#    "addr": "SX1xZQLpDwPPd7mSwV7MngSLNXZUuTy1MG",
#    "version": 70921,
#    "lastseen": 1549097241,
#    "activetime": 59794,
#    "lastpaid": 0
#  },
#
#divido la risposta in array e conservo 17esimo elemento
#echo "Ls ricevuto :$LS:"
a=( $LS )
LS=${a[27]}
LS=${LS//[,]/}
CU=$(date +%s)
LS1=$(($CU - $LS))
#echo "CU:$CU ->LS:$LS ->LS1:$LS1"
echo "$LS1"
}



###########################################################################
###########################################################################
Calcola_LP_Snd()
{
let "TN=$AN_SND + $AN_DOGEC -50"
LP=$(snodecoin-cli getmasternodewinners $TN | grep $1 -A 2 -B 2)
#ottengo una risposta tipo
# "nHeight": 144649,
#    "winner": {
#      "address": "SgQLcXHh7gQeJ1PxgxRUHCnmqZr7tAdKYy",
#      "nVotes": 5
#    }
#
#divido la risposta in array e conservo 21esimo elemento
#echo "Lp ricevuto :$LP:"
a=( $LP )
LP=${a[1]}
LP=${LP//[,]/}
#echo ${a[1]}
#echo ${a[2]}
CONF=$(($TB_SND - $LP))
DIFF=$(($AN_SND - $CONF))
echo "$CONF ($DIFF)"
}

Calcola_Status_Snd(){
LS=$(snodecoin-cli masternode list | grep $1 -A 5  -B 6)
#ottengo una risposta tipo
# {
#    "rank": 136,
#    "network": "ipv4",
#    "txhash": "b0ca9bc6b65df74d1a750d2208fca7a1f26b33fa0da21d6eb355e551a9197c1c",
#    "outidx": 0,
#    "status": "ENABLED",
#    "addr": "SX1xZQLpDwPPd7mSwV7MngSLNXZUuTy1MG",
#    "version": 70921,
#    "lastseen": 1549097241,
#    "activetime": 59794,
#    "lastpaid": 0
#  },
#
#divido la risposta in array e conservo 11esimo elemento
a=( $LS )
LS=${a[10]}
LS=${LS//[,]/}
echo $LS| tr -d '"'
#echo "$LS"
}

Calcola_LastSeen_Snd(){

LS=$(snodecoin-cli masternode list | grep $1 -A 5  -B 6)
#ottengo una risposta tipo
# {
#    "rank": 136,
#    "network": "ipv4",
#    "txhash": "b0ca9bc6b65df74d1a750d2208fca7a1f26b33fa0da21d6eb355e551a9197c1c",
#    "outidx": 0,
#    "status": "ENABLED",
#    "addr": "SX1xZQLpDwPPd7mSwV7MngSLNXZUuTy1MG",
#    "version": 70921,
#    "lastseen": 1549097241,
#    "activetime": 59794,
#    "lastpaid": 0
#  },
#
#divido la risposta in array e conservo 16esimo elemento
#echo "Ls ricevuto :$LS:"
a=( $LS )
LS=${a[16]}
LS=${LS//[,]/}
CU=$(date +%s)
LS1=$(($CU - $LS))
#echo "CU:$CU ->LS:$LS ->LS1:$LS1"
echo "$LS1"
}
clear

###########################################################################
###########################################################################
#echo "VivoCoin status"
#echo "Blocchi : $LB_VIVO / $TB_VIVO  Masternodes: $AN_VIVO"
#echo " "
#echo "Contabo_MN08_01  Conferme: $(Calcola_LP_Vivo $MN01_VIVO) - $(Calcola_Status_Vivo $MN01_VIVO) - $(Calcola_LastSeen_Vivo $MN01_VIVO)"
#echo "Contabo_MN08_02  Conferme: $(Calcola_LP_Vivo $MN02_VIVO) - $(Calcola_Status_Vivo $MN02_VIVO) - $(Calcola_LastSeen_Vivo $MN02_VIVO)"
#echo "Contabo_MN08_03  Conferme: $(Calcola_LP_Vivo $MN03_VIVO) - $(Calcola_Status_Vivo $MN03_VIVO) - $(Calcola_LastSeen_Vivo $MN03_VIVO)"
#echo "Contabo_MN08_04  Conferme: $(Calcola_LP_Vivo $MN04_VIVO) - $(Calcola_Status_Vivo $MN04_VIVO) - $(Calcola_LastSeen_Vivo $MN04_VIVO)"
#echo "Contabo_MN08_05  Conferme: $(Calcola_LP_Vivo $MN05_VIVO) - $(Calcola_Status_Vivo $MN05_VIVO) - $(Calcola_LastSeen_Vivo $MN05_VIVO)"
#echo "Contabo_MN08_06  Conferme: $(Calcola_LP_Vivo $MN06_VIVO) - $(Calcola_Status_Vivo $MN06_VIVO) - $(Calcola_LastSeen_Vivo $MN06_VIVO)"
#echo "Contabo_MN08_07  Conferme: $(Calcola_LP_Vivo $MN07_VIVO) - $(Calcola_Status_Vivo $MN07_VIVO) - $(Calcola_LastSeen_Vivo $MN07_VIVO)"
#echo "Contabo_MN08_08  Conferme: $(Calcola_LP_Vivo $MN08_VIVO) - $(Calcola_Status_Vivo $MN08_VIVO) - $(Calcola_LastSeen_Vivo $MN08_VIVO)"
#echo "Contabo_MN08_09  Conferme: $(Calcola_LP_Vivo $MN09_VIVO) - $(Calcola_Status_Vivo $MN09_VIVO) - $(Calcola_LastSeen_Vivo $MN09_VIVO)"
#echo "Contabo_MN08_10  Conferme: $(Calcola_LP_Vivo $MN10_VIVO) - $(Calcola_Status_Vivo $MN10_VIVO) - $(Calcola_LastSeen_Vivo $MN10_VIVO)"
#echo "Contabo_MN10_11  Conferme: $(Calcola_LP_Vivo $MN11_VIVO) - $(Calcola_Status_Vivo $MN11_VIVO) - $(Calcola_LastSeen_Vivo $MN11_VIVO)"
#echo "Contabo_MN10_12  Conferme: $(Calcola_LP_Vivo $MN12_VIVO) - $(Calcola_Status_Vivo $MN12_VIVO) - $(Calcola_LastSeen_Vivo $MN12_VIVO)"
#echo "Contabo_MN10_13  Conferme: $(Calcola_LP_Vivo $MN13_VIVO) - $(Calcola_Status_Vivo $MN13_VIVO) - $(Calcola_LastSeen_Vivo $MN13_VIVO)"
#echo "Contabo_MN10_14  Conferme: $(Calcola_LP_Vivo $MN14_VIVO) - $(Calcola_Status_Vivo $MN14_VIVO) - $(Calcola_LastSeen_Vivo $MN14_VIVO)"
#echo "Contabo_MN10_15  Conferme: $(Calcola_LP_Vivo $MN15_VIVO) - $(Calcola_Status_Vivo $MN15_VIVO) - $(Calcola_LastSeen_Vivo $MN15_VIVO)"
#echo "Contabo_MN10_16  Conferme: $(Calcola_LP_Vivo $MN16_VIVO) - $(Calcola_Status_Vivo $MN16_VIVO) - $(Calcola_LastSeen_Vivo $MN16_VIVO)"
#echo "Contabo_MN10_17  Conferme: $(Calcola_LP_Vivo $MN17_VIVO) - $(Calcola_Status_Vivo $MN17_VIVO) - $(Calcola_LastSeen_Vivo $MN17_VIVO)"
#echo "Contabo_MN10_18  Conferme: $(Calcola_LP_Vivo $MN18_VIVO) - $(Calcola_Status_Vivo $MN18_VIVO) - $(Calcola_LastSeen_Vivo $MN18_VIVO)"
#echo "Contabo_MN10_19  Conferme: $(Calcola_LP_Vivo $MN19_VIVO) - $(Calcola_Status_Vivo $MN19_VIVO) - $(Calcola_LastSeen_Vivo $MN19_VIVO)"
#echo "Contabo_MN10_20  Conferme: $(Calcola_LP_Vivo $MN20_VIVO) - $(Calcola_Status_Vivo $MN20_VIVO) - $(Calcola_LastSeen_Vivo $MN20_VIVO)"
#echo " "

echo "Stone status"
echo "Blocchi : $LB_STONE / $TB_STONE  Masternodes: $AN_STONE"
echo " "
echo " MN01  Conferme: $(Calcola_LP_Stone $MN01_STONE) - $(Calcola_Status_Stone $MN01_STONE) - $(Calcola_LastSeen_Stone $MN01_STONE)"
echo " MN03  Conferme: $(Calcola_LP_Stone $MN02_STONE) - $(Calcola_Status_Stone $MN02_STONE) - $(Calcola_LastSeen_Stone $MN02_STONE)"
echo " MN06  Conferme: $(Calcola_LP_Stone $MN03_STONE) - $(Calcola_Status_Stone $MN03_STONE) - $(Calcola_LastSeen_Stone $MN03_STONE)"
echo "CMN01  Conferme: $(Calcola_LP_Stone $MN04_STONE) - $(Calcola_Status_Stone $MN04_STONE) - $(Calcola_LastSeen_Stone $MN04_STONE)"
echo "CMN02  Conferme: $(Calcola_LP_Stone $MN05_STONE) - $(Calcola_Status_Stone $MN05_STONE) - $(Calcola_LastSeen_Stone $MN05_STONE)"
echo "CMN03  Conferme: $(Calcola_LP_Stone $MN06_STONE) - $(Calcola_Status_Stone $MN06_STONE) - $(Calcola_LastSeen_Stone $MN06_STONE)"
echo "CMN04  Conferme: $(Calcola_LP_Stone $MN07_STONE) - $(Calcola_Status_Stone $MN07_STONE) - $(Calcola_LastSeen_Stone $MN07_STONE)"
echo "CMN05  Conferme: $(Calcola_LP_Stone $MN08_STONE) - $(Calcola_Status_Stone $MN08_STONE) - $(Calcola_LastSeen_Stone $MN08_STONE)"
echo "CMN06  Conferme: $(Calcola_LP_Stone $MN09_STONE) - $(Calcola_Status_Stone $MN09_STONE) - $(Calcola_LastSeen_Stone $MN09_STONE)"
echo "CMN07  Conferme: $(Calcola_LP_Stone $MN10_STONE) - $(Calcola_Status_Stone $MN10_STONE) - $(Calcola_LastSeen_Stone $MN10_STONE)"
echo "CMN08  Conferme: $(Calcola_LP_Stone $MN11_STONE) - $(Calcola_Status_Stone $MN11_STONE) - $(Calcola_LastSeen_Stone $MN11_STONE)"
echo "CMN09  Conferme: $(Calcola_LP_Stone $MN12_STONE) - $(Calcola_Status_Stone $MN12_STONE) - $(Calcola_LastSeen_Stone $MN12_STONE)"
echo "CMN10  Conferme: $(Calcola_LP_Stone $MN13_STONE) - $(Calcola_Status_Stone $MN13_STONE) - $(Calcola_LastSeen_Stone $MN13_STONE)"
echo "CMN11  Conferme: $(Calcola_LP_Stone $MN14_STONE) - $(Calcola_Status_Stone $MN14_STONE) - $(Calcola_LastSeen_Stone $MN14_STONE)"
echo " "

#echo "Innova status"
#echo "Blocchi : $LB_INN / $TB_INN  Masternodes: $AN_INN"
#echo " "
#echo "MN01  Conferme: $(Calcola_LP_Inn $MN01_INN) - $(Calcola_Status_Inn $MN01_INN) - $(Calcola_LastSeen_Inn $MN01_INN)"
#echo "MN02  Conferme: $(Calcola_LP_Inn $MN02_INN) - $(Calcola_Status_Inn $MN02_INN) - $(Calcola_LastSeen_Inn $MN02_INN)"
#echo "MN03  Conferme: $(Calcola_LP_Inn $MN03_INN) - $(Calcola_Status_Inn $MN03_INN) - $(Calcola_LastSeen_Inn $MN03_INN)"
#echo "MN04  Conferme: $(Calcola_LP_Inn $MN04_INN) - $(Calcola_Status_Inn $MN04_INN) - $(Calcola_LastSeen_Inn $MN04_INN)"
#echo "MN05  Conferme: $(Calcola_LP_Inn $MN05_INN) - $(Calcola_Status_Inn $MN05_INN) - $(Calcola_LastSeen_Inn $MN05_INN)"
#echo "MN06  Conferme: $(Calcola_LP_Inn $MN06_INN) - $(Calcola_Status_Inn $MN06_INN) - $(Calcola_LastSeen_Inn $MN06_INN)"
#echo "MN07  Conferme: $(Calcola_LP_Inn $MN07_INN) - $(Calcola_Status_Inn $MN07_INN) - $(Calcola_LastSeen_Inn $MN07_INN)"
#echo "MN08  Conferme: $(Calcola_LP_Inn $MN08_INN) - $(Calcola_Status_Inn $MN08_INN) - $(Calcola_LastSeen_Inn $MN08_INN)"
#echo "MN09  Conferme: $(Calcola_LP_Inn $MN09_INN) - $(Calcola_Status_Inn $MN09_INN) - $(Calcola_LastSeen_Inn $MN09_INN)"
#echo "MN10  Conferme: $(Calcola_LP_Inn $MN10_INN) - $(Calcola_Status_Inn $MN10_INN) - $(Calcola_LastSeen_Inn $MN10_INN)"
#echo "MN11  Conferme: $(Calcola_LP_Inn $MN11_INN) - $(Calcola_Status_Inn $MN11_INN) - $(Calcola_LastSeen_Inn $MN11_INN)"
#echo " "
echo "Dogec status"
echo "Blocchi : $LB_DOGEC / $TB_DOGEC  Masternodes: $AN_DOGEC"
echo " "
echo " MN01  Conferme: $(Calcola_LP_Dogec $MN01_DOGEC) - $(Calcola_Status_Dogec $MN01_DOGEC) - $(Calcola_LastSeen_Dogec $MN01_DOGEC)"
#echo " MN02  Conferme: $(Calcola_LP_Dogec $MN02_DOGEC) - $(Calcola_Status_Dogec $MN02_DOGEC) - $(Calcola_LastSeen_Dogec $MN02_DOGEC)"
echo " MN06  Conferme: $(Calcola_LP_Dogec $MN03_DOGEC) - $(Calcola_Status_Dogec $MN03_DOGEC) - $(Calcola_LastSeen_Dogec $MN03_DOGEC)"
#echo "CMN01  Conferme: $(Calcola_LP_Dogec $MN04_DOGEC) - $(Calcola_Status_Dogec $MN04_DOGEC) - $(Calcola_LastSeen_Dogec $MN04_DOGEC)"
echo "CMN02  Conferme: $(Calcola_LP_Dogec $MN05_DOGEC) - $(Calcola_Status_Dogec $MN05_DOGEC) - $(Calcola_LastSeen_Dogec $MN05_DOGEC)"
#echo "CMN03  Conferme: $(Calcola_LP_Dogec $MN06_DOGEC) - $(Calcola_Status_Dogec $MN06_DOGEC) - $(Calcola_LastSeen_Dogec $MN06_DOGEC)"
echo "CMN04  Conferme: $(Calcola_LP_Dogec $MN07_DOGEC) - $(Calcola_Status_Dogec $MN07_DOGEC) - $(Calcola_LastSeen_Dogec $MN07_DOGEC)"
echo "CMN05  Conferme: $(Calcola_LP_Dogec $MN08_DOGEC) - $(Calcola_Status_Dogec $MN08_DOGEC) - $(Calcola_LastSeen_Dogec $MN08_DOGEC)"
#echo "CMN06  Conferme: $(Calcola_LP_Dogec $MN09_DOGEC) - $(Calcola_Status_Dogec $MN09_DOGEC) - $(Calcola_LastSeen_Dogec $MN09_DOGEC)"
echo "CMN07  Conferme: $(Calcola_LP_Dogec $MN10_DOGEC) - $(Calcola_Status_Dogec $MN10_DOGEC) - $(Calcola_LastSeen_Dogec $MN10_DOGEC)"
#echo "CMN08  Conferme: $(Calcola_LP_Dogec $MN11_DOGEC) - $(Calcola_Status_Dogec $MN11_DOGEC) - $(Calcola_LastSeen_Dogec $MN11_DOGEC)"
#echo "CMN09  Conferme: $(Calcola_LP_Dogec $MN12_DOGEC) - $(Calcola_Status_Dogec $MN12_DOGEC) - $(Calcola_LastSeen_Dogec $MN12_DOGEC)"
echo "CMN10  Conferme: $(Calcola_LP_Dogec $MN13_DOGEC) - $(Calcola_Status_Dogec $MN13_DOGEC) - $(Calcola_LastSeen_Dogec $MN13_DOGEC)"
#echo "CMN11  Conferme: $(Calcola_LP_Dogec $MN14_DOGEC) - $(Calcola_Status_Dogec $MN14_DOGEC) - $(Calcola_LastSeen_Dogec $MN14_DOGEC)"
echo " "
echo "Snd status"
echo "Blocchi : $LB_SND / $TB_SND  Masternodes: $AN_SND"
echo " "
echo " MN01  Conferme: $(Calcola_LP_Snd $MN12_SND) - $(Calcola_Status_Snd $MN12_SND) - $(Calcola_LastSeen_Snd $MN12_SND)"
echo " MN03  Conferme: $(Calcola_LP_Snd $MN13_SND) - $(Calcola_Status_Snd $MN13_SND) - $(Calcola_LastSeen_Snd $MN13_SND)"
echo " MN06  Conferme: $(Calcola_LP_Snd $MN14_SND) - $(Calcola_Status_Snd $MN14_SND) - $(Calcola_LastSeen_Snd $MN14_SND)"
echo "CMN01  Conferme: $(Calcola_LP_Snd $MN01_SND) - $(Calcola_Status_Snd $MN01_SND) - $(Calcola_LastSeen_Snd $MN01_SND)"
echo "CMN02  Conferme: $(Calcola_LP_Snd $MN02_SND) - $(Calcola_Status_Snd $MN02_SND) - $(Calcola_LastSeen_Snd $MN02_SND)"
echo "CMN03  Conferme: $(Calcola_LP_Snd $MN03_SND) - $(Calcola_Status_Snd $MN03_SND) - $(Calcola_LastSeen_Snd $MN03_SND)"
echo "CMN04  Conferme: $(Calcola_LP_Snd $MN04_SND) - $(Calcola_Status_Snd $MN04_SND) - $(Calcola_LastSeen_Snd $MN04_SND)"
echo "CMN05  Conferme: $(Calcola_LP_Snd $MN05_SND) - $(Calcola_Status_Snd $MN05_SND) - $(Calcola_LastSeen_Snd $MN05_SND)"
echo "CMN06  Conferme: $(Calcola_LP_Snd $MN06_SND) - $(Calcola_Status_Snd $MN06_SND) - $(Calcola_LastSeen_Snd $MN06_SND)"
echo "CMN07  Conferme: $(Calcola_LP_Snd $MN07_SND) - $(Calcola_Status_Snd $MN07_SND) - $(Calcola_LastSeen_Snd $MN07_SND)"
echo "CMN08  Conferme: $(Calcola_LP_Snd $MN08_SND) - $(Calcola_Status_Snd $MN08_SND) - $(Calcola_LastSeen_Snd $MN08_SND)"
echo "CMN09  Conferme: $(Calcola_LP_Snd $MN09_SND) - $(Calcola_Status_Snd $MN09_SND) - $(Calcola_LastSeen_Snd $MN09_SND)"
echo "CMN10  Conferme: $(Calcola_LP_Snd $MN10_SND) - $(Calcola_Status_Snd $MN10_SND) - $(Calcola_LastSeen_Snd $MN10_SND)"
echo "CMN11  Conferme: $(Calcola_LP_Snd $MN11_SND) - $(Calcola_Status_Snd $MN11_SND) - $(Calcola_LastSeen_Snd $MN11_SND)"
