#!/bin/bash

POOL=us1.ethermine.org:14444
WALLET=0xf48D78548D348a72278d4e752B90D192B2fA17b5
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lyra

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@