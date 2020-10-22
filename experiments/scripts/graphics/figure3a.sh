#! /bin/bash
cat results/scenario1/256k/LTP-UDP-256k-128b.txt | grep sec | head -30 | tr - " " | awk '{print $4, $8}' > scripts/graphics/files/figure3a/LTP-UDP-256k-128b.txt
cat results/scenario1/256k/STD-UDP-256k-128b.txt | grep sec | head -30 | tr - " " | awk '{print $4, $8}' > scripts/graphics/files/figure3a/STD-UDP-256k-128b.txt
cd scripts/graphics/files/figure3a/
gnuplot figure3a.plot
cd ../../../../
