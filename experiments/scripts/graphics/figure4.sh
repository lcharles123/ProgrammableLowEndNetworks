#! /bin/bash
cat results/scenario7/LTP-WGET-256k.txt | grep % | cut -d 'K' -f 1,2| tr K ' '| cut -c -6,63-67 > scripts/graphics/files/figure4/LTP-WGET-256k.txt
cat results/scenario7/STD-WGET-256k.txt | grep % | cut -d 'K' -f 1,2| tr K ' '| cut -c -6,63-67 > scripts/graphics/files/figure4/STD-WGET-256k.txt
cd scripts/graphics/files/figure4/
gnuplot figure4.plot
cd ../../../../
