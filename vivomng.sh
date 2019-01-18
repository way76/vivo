#!/bin/bash
#vivomng.sh
EXPBLOCK=$(curl -s4 "http://149.28.83.1:3001/api/getblockcount")
EXPBLOCKLOW=$(expr $EXPBLOCK - 20)
EXPBLOCKHIGH=$(expr $EXPBLOCK + 20)
MNBLOCK=$(cd /usr/local/bin && su mnv -c 'vivo-cli getblockcount')

checkBlock(){
#MNBLOCK=$(cd /usr/local/bin &&./vivo-cli getblockcount)
#sleep 2
echo "$(date +%F_%T) Verifying block height.." >> vivochecker.log
echo "$(date +%F_%T) Masternode Block $MNBLOCK.."  >> vivochecker.log
echo "$(date +%F_%T) Explorer Block $EXPBLOCK.."  >> vivochecker.log
if [ "$MNBLOCK" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK" -le "$EXPBLOCKHIGH" ]; then
  echo "$(date +%F_%T) Block height matches!"  >> vivochecker.log
  #complete
else
  echo "$(date +%F_%T) Block mismatch, updating.."  >> vivochecker.log
    reinizializza
#  doubleCheckBlock
fi
}

reinizializza(){
	su mnv -c 'vivo-cli stop'
	sleep 61
	su mnv -c 'vivod -reindex'
	sleep 10
	su mnv -c 'vivo-cli stop'
	sleep 61
	su mnv -c 'vivod -daemon'
	sleep 10
	su mnv -c 'vivo-cli getinfo'
}

checkBlock
