#!/bin/bash

apikey=H5hUtgxP63JrrHu74n6KVTzV4wiMD3Zf
#device_id=MITJQ67-VIWSNOZ-467A4AX-C4HJEDT-SDCJFC3-GGXMZU4-ADC24ZP-BMWA2AV
device_id=AVQL2PR-AH2FR6E-DFGCEYM-Y7R54PQ-GCMGEFJ-BPNIUUX-SEMP5E7-PA4A2Q4
folder_id=test

while :
do
    val=$(curl -sk -H "X-API-Key: $apikey" -X GET "https://127.0.0.1:8384/rest/db/completion?folder=$folder_id&device=$device_id" | jq .completion)
    #clear
    echo "waiting ..."
    if [[ "$val" -ne 100 ]]; then
        for f in ~/Test/*
        do
            base="${f##*/}"
            echo "Converting - $f"
            supernote-tool convert -t pdf -a $f ~/Notes/fall2023/Notes/${base%.*}.pdf
            sleep 10
        done
    fi
done
#for f in ~/Test/*
#do
#    base="${f##*/}"
#    echo "Converting - $f"
#    supernote-tool convert -t pdf -a $f ~/Notes/fall2023/Notes/${base%.*}.pdf
#done
