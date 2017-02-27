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
    cd $BASEDIR
fi

YAHOO_QUOTE_URL_PARTA='http://real-chart.finance.yahoo.com/table.csv?a=02&b=1&c=2016&d=01&e=25&f=2017&g=d&ignore=.csv&s='
while read line; do
     echo "getting historical quote for : $line"
     #chomp $line
     YAHOO_QUOTE_URL="${YAHOO_QUOTE_URL_PARTA}$line" 
     # get quote file
     QUOTE_FILE=${line}.csv
     curl -s $YAHOO_QUOTE_URL > "../tmp/$QUOTE_FILE"
     # get close file
     cat ../tmp/$QUOTE_FILE | awk -F, '{print $(NF-2)}' > ../stockdata/close_${QUOTE_FILE} 
     sed '/Close/d' ../stockdata/close_${QUOTE_FILE}
     # get volume file
     cat ../tmp/$QUOTE_FILE | awk -F, '{print $(NF-1)}' > ../stockdata/vol_${QUOTE_FILE}
     sed '/Volume/d' ../stockdata/vol_${QUOTE_FILE}
     sleep 3
done < $FILE

######### Once the quote files are generated run_moweeda.sh on stock data .. enjoy
