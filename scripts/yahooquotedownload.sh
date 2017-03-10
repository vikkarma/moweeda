#!/bin/bash

###############################################
# change date in YAHOO_QUOTE_URL_PARTA to run #
# FILE=../config/yahoofno
# FILE=../config/yahoomidcal150
###############################################

FILE=$1
BASEDIR=$(dirname $0)
if [ ! -z "$BASEDIR" ]; then
    echo "changing current dir to $BASEDIR"
    echo "change date in YAHOO_QUOTE_URL_PARTA to run"
    cd $BASEDIR
fi
#from {a=month-1, b=day, c=year}, to {d=month-1, e=day, f = year}
YAHOO_QUOTE_URL_PARTA='http://real-chart.finance.yahoo.com/table.csv?a=02&b=1&c=2016&d=01&e=25&f=2017&g=d&ignore=.csv&s='
while true; do
    read -p "Did you change the date for which to download quotes in YAHOO_QUOTE_URL_PARTA?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

while read line; do
     echo "getting historical quote for : $line"
     #chomp $line
     YAHOO_QUOTE_URL="${YAHOO_QUOTE_URL_PARTA}$line" 
     # get quote file
     QUOTE_FILE=${line}.csv
     curl -s $YAHOO_QUOTE_URL > "../tmp/$QUOTE_FILE"
     # get close file
     cat ../tmp/$QUOTE_FILE | awk -F, '{print $(NF-2)}' > ../stockdata/close_${QUOTE_FILE} 
     sed -i '/Close/d' ../stockdata/close_${QUOTE_FILE}
     # yahoo generates quotes in descending date order 
     # moweeda code expects quotes in ascending date order so reverse it
     echo "reversing ../stockdata/close_${QUOTE_FILE} to ascending date order as reqd by moweeda"
     tac ../stockdata/close_${QUOTE_FILE} > ../stockdata/close_tac_${QUOTE_FILE}
     mv ../stockdata/close_tac_${QUOTE_FILE} ../stockdata/close_${QUOTE_FILE}

     # get volume file
     cat ../tmp/$QUOTE_FILE | awk -F, '{print $(NF-1)}' > ../stockdata/vol_${QUOTE_FILE}
     sed -i '/Volume/d' ../stockdata/vol_${QUOTE_FILE}
     # yahoo generates quotes in descending date order 
     # moweeda code expects quotes in ascending date order so reverse it
     echo "reversing  ../stockdata/vol_${QUOTE_FILE} to ascending date order as reqd by moweeda"
     tac ../stockdata/vol_${QUOTE_FILE} > ../stockdata/vol_tac_${QUOTE_FILE}
     mv ../stockdata/vol_tac_${QUOTE_FILE} ../stockdata/vol_${QUOTE_FILE}
     sleep 3 
done < $FILE

######### Once the quote files are generated run_moweeda.sh on stock data .. enjoy
