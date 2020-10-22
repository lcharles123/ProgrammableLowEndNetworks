#! /bin/bash
cat results/scenario2/64k/LTP-TCP-64k-512b.txt | grep sec | head -30 | tr - " " | awk '{print $4, $8}' > scripts/graphics/files/figure2c/LTP-TCP-64k-512b.txt
cat results/scenario2/128k/LTP-TCP-128k-512b.txt | grep sec | head -30 | tr - " " | awk '{print $4, $8}' > scripts/graphics/files/figure2c/LTP-TCP-128k-512b.txt
cat results/scenario2/256k/LTP-TCP-256k-512b.txt | grep sec | head -30 | tr - " " | awk '{print $4, $8}' > scripts/graphics/files/figure2c/LTP-TCP-256k-512b.txt
cat results/scenario2/512k/LTP-TCP-512k-512b.txt | grep sec | head -30 | tr - " " | awk '{print $4, $8}' > scripts/graphics/files/figure2c/LTP-TCP-512k-512b.txt
cd scripts/graphics/files/figure2c/
gnuplot figure2c.plot
cd ../../../../
