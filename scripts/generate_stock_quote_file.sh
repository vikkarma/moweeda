#Collect annual stock quote data from google sheet "MOWEEDA HISTORICAL PRICE"
#into files 1..14 corresponding to sheet 1..14 in stockdata folder
#sed -i 's/15:30:00//g' *
#then run this script to generate quote files
#run the algo on the quote files to generate trade signals
#Currently reverse signal is being generated because the quote is generated in reverse date order
cat 1 | awk '{print $2}' > 1_2
cat 2 | awk '{print $2}' > 2_2
cat 3 | awk '{print $2}' > 3_2
cat 4 | awk '{print $2}' > 4_2
cat 5 | awk '{print $2}' > 5_2
cat 6 | awk '{print $2}' > 6_2
cat 7 | awk '{print $2}' > 7_2
cat 8 | awk '{print $2}' > 8_2
cat 9 | awk '{print $2}' > 9_2
cat 10 | awk '{print $2}' > 10_2
cat 11 | awk '{print $2}' > 11_2
cat 12 | awk '{print $2}' > 12_2
cat 13 | awk '{print $2}' > 13_2
cat 14 | awk '{print $2}' > 14_2
cat 1 | awk '{print $4}' > 1_4
cat 2 | awk '{print $4}' > 2_4
cat 3 | awk '{print $4}' > 3_4
cat 4 | awk '{print $4}' > 4_4
cat 5 | awk '{print $4}' > 5_4
cat 6 | awk '{print $4}' > 6_4
cat 7 | awk '{print $4}' > 7_4
cat 8 | awk '{print $4}' > 8_4
cat 9 | awk '{print $4}' > 9_4
cat 10 | awk '{print $4}' > 10_4
cat 11 | awk '{print $4}' > 11_4
cat 12 | awk '{print $4}' > 12_4
cat 13 | awk '{print $4}' > 13_4
cat 14 | awk '{print $4}' > 14_4
cat 1 | awk '{print $6}' > 1_6
cat 2 | awk '{print $6}' > 2_6
cat 3 | awk '{print $6}' > 3_6
cat 4 | awk '{print $6}' > 4_6
cat 5 | awk '{print $6}' > 5_6
cat 6 | awk '{print $6}' > 6_6
cat 7 | awk '{print $6}' > 7_6
cat 8 | awk '{print $6}' > 8_6
cat 9 | awk '{print $6}' > 9_6
cat 10 | awk '{print $6}' > 10_6
cat 11 | awk '{print $6}' > 11_6
cat 12 | awk '{print $6}' > 12_6
cat 13 | awk '{print $6}' > 13_6
cat 14 | awk '{print $6}' > 14_6
cat 1 | awk '{print $8}' > 1_8
cat 2 | awk '{print $8}' > 2_8
cat 3 | awk '{print $8}' > 3_8
cat 4 | awk '{print $8}' > 4_8
cat 5 | awk '{print $8}' > 5_8
cat 6 | awk '{print $8}' > 6_8
cat 7 | awk '{print $8}' > 7_8
cat 8 | awk '{print $8}' > 8_8
cat 9 | awk '{print $8}' > 9_8
cat 10 | awk '{print $8}' > 10_8
cat 11 | awk '{print $8}' > 11_8
cat 12 | awk '{print $8}' > 12_8
cat 13 | awk '{print $8}' > 13_8
cat 14 | awk '{print $8}' > 14_8
cat 1 | awk '{print $10}' > 1_10
cat 2 | awk '{print $10}' > 2_10
cat 3 | awk '{print $10}' > 3_10
cat 4 | awk '{print $10}' > 4_10
cat 5 | awk '{print $10}' > 5_10
cat 6 | awk '{print $10}' > 6_10
cat 7 | awk '{print $10}' > 7_10
cat 8 | awk '{print $10}' > 8_10
cat 9 | awk '{print $10}' > 9_10
cat 10 | awk '{print $10}' > 10_10
cat 11 | awk '{print $10}' > 11_10
cat 12 | awk '{print $10}' > 12_10
cat 13 | awk '{print $10}' > 13_10
cat 14 | awk '{print $10}' > 14_10
cat 1 | awk '{print $12}' > 1_12
cat 2 | awk '{print $12}' > 2_12
cat 3 | awk '{print $12}' > 3_12
cat 4 | awk '{print $12}' > 4_12
cat 5 | awk '{print $12}' > 5_12
cat 6 | awk '{print $12}' > 6_12
cat 7 | awk '{print $12}' > 7_12
cat 8 | awk '{print $12}' > 8_12
cat 9 | awk '{print $12}' > 9_12
cat 10 | awk '{print $12}' > 10_12
cat 11 | awk '{print $12}' > 11_12
cat 12 | awk '{print $12}' > 12_12
cat 13 | awk '{print $12}' > 13_12
cat 14 | awk '{print $12}' > 14_12
cat 1 | awk '{print $14}' > 1_14
cat 2 | awk '{print $14}' > 2_14
cat 3 | awk '{print $14}' > 3_14
cat 4 | awk '{print $14}' > 4_14
cat 5 | awk '{print $14}' > 5_14
cat 6 | awk '{print $14}' > 6_14
cat 7 | awk '{print $14}' > 7_14
cat 8 | awk '{print $14}' > 8_14
cat 9 | awk '{print $14}' > 9_14
cat 10 | awk '{print $14}' > 10_14
cat 11 | awk '{print $14}' > 11_14
cat 12 | awk '{print $14}' > 12_14
cat 13 | awk '{print $14}' > 13_14
cat 14 | awk '{print $14}' > 14_14
cat 1 | awk '{print $16}' > 1_16
cat 2 | awk '{print $16}' > 2_16
cat 3 | awk '{print $16}' > 3_16
cat 4 | awk '{print $16}' > 4_16
cat 5 | awk '{print $16}' > 5_16
cat 6 | awk '{print $16}' > 6_16
cat 7 | awk '{print $16}' > 7_16
cat 8 | awk '{print $16}' > 8_16
cat 9 | awk '{print $16}' > 9_16
cat 10 | awk '{print $16}' > 10_16
cat 11 | awk '{print $16}' > 11_16
cat 12 | awk '{print $16}' > 12_16
cat 13 | awk '{print $16}' > 13_16
cat 14 | awk '{print $16}' > 14_16
cat 1 | awk '{print $18}' > 1_18
cat 2 | awk '{print $18}' > 2_18
cat 3 | awk '{print $18}' > 3_18
cat 4 | awk '{print $18}' > 4_18
cat 5 | awk '{print $18}' > 5_18
cat 6 | awk '{print $18}' > 6_18
cat 7 | awk '{print $18}' > 7_18
cat 8 | awk '{print $18}' > 8_18
cat 9 | awk '{print $18}' > 9_18
cat 10 | awk '{print $18}' > 10_18
cat 11 | awk '{print $18}' > 11_18
cat 12 | awk '{print $18}' > 12_18
cat 13 | awk '{print $18}' > 13_18
cat 14 | awk '{print $18}' > 14_18
cat 1 | awk '{print $20}' > 1_20
cat 2 | awk '{print $20}' > 2_20
cat 3 | awk '{print $20}' > 3_20
cat 4 | awk '{print $20}' > 4_20
cat 5 | awk '{print $20}' > 5_20
cat 6 | awk '{print $20}' > 6_20
cat 7 | awk '{print $20}' > 7_20
cat 8 | awk '{print $20}' > 8_20
cat 9 | awk '{print $20}' > 9_20
cat 10 | awk '{print $20}' > 10_20
cat 11 | awk '{print $20}' > 11_20
cat 12 | awk '{print $20}' > 12_20
cat 13 | awk '{print $20}' > 13_20
cat 14 | awk '{print $20}' > 14_20
cat 1 | awk '{print $22}' > 1_22
cat 2 | awk '{print $22}' > 2_22
cat 3 | awk '{print $22}' > 3_22
cat 4 | awk '{print $22}' > 4_22
cat 5 | awk '{print $22}' > 5_22
cat 6 | awk '{print $22}' > 6_22
cat 7 | awk '{print $22}' > 7_22
cat 8 | awk '{print $22}' > 8_22
cat 9 | awk '{print $22}' > 9_22
cat 10 | awk '{print $22}' > 10_22
cat 11 | awk '{print $22}' > 11_22
cat 12 | awk '{print $22}' > 12_22
cat 13 | awk '{print $22}' > 13_22
cat 14 | awk '{print $22}' > 14_22
cat 1 | awk '{print $24}' > 1_24
cat 2 | awk '{print $24}' > 2_24
cat 3 | awk '{print $24}' > 3_24
cat 4 | awk '{print $24}' > 4_24
cat 5 | awk '{print $24}' > 5_24
cat 6 | awk '{print $24}' > 6_24
cat 7 | awk '{print $24}' > 7_24
cat 8 | awk '{print $24}' > 8_24
cat 9 | awk '{print $24}' > 9_24
cat 10 | awk '{print $24}' > 10_24
cat 11 | awk '{print $24}' > 11_24
cat 12 | awk '{print $24}' > 12_24
cat 13 | awk '{print $24}' > 13_24
cat 14 | awk '{print $24}' > 14_24
cat 1 | awk '{print $26}' > 1_26
cat 2 | awk '{print $26}' > 2_26
cat 3 | awk '{print $26}' > 3_26
cat 4 | awk '{print $26}' > 4_26
cat 5 | awk '{print $26}' > 5_26
cat 6 | awk '{print $26}' > 6_26
cat 7 | awk '{print $26}' > 7_26
cat 8 | awk '{print $26}' > 8_26
cat 9 | awk '{print $26}' > 9_26
cat 10 | awk '{print $26}' > 10_26
cat 11 | awk '{print $26}' > 11_26
cat 12 | awk '{print $26}' > 12_26
cat 13 | awk '{print $26}' > 13_26
cat 14 | awk '{print $26}' > 14_26
