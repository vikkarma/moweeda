#!/bin/bash
FILE=$1
#FILE=../config/yahoofno
#FILE=../config/yahoomidcal150
YAHOO_QUOTE_URL_PARTA='http://real-chart.finance.yahoo.com/table.csv?a=02&b=1&c=2016&d=01&e=25&f=2017&g=d&ignore=.csv&s='
while read line; do
     echo "getting istorical quote for : $line"
     chomp($line)
     YAHOO_QUOTE_URL="${YAHOO_QUOTE_URL_PARTA}$line" #outputs table.csv
     wget $YAHOO_QUOTE_URL
     QUOTE_FILE=${line}.csv
     mv table.csv $QUOTE_FILE 
     cat $QUOTE_FILE | awk -F, '{print $(NF-2)}' > close_${QUOTE_FILE} 
     cat $QUOTE_FILE | awk -F, '{print $(NF-1)}' > vol_${QUOTE_FILE}
done < $FILE
