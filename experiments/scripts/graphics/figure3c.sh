#! /bin/bash
cat results/scenario3/256k/LTP-UDP-256k-1024b.txt | grep sec | head -30 | tr - " " | awk '{print $4, $8}' > scripts/graphics/files/figure3c/LTP-UDP-256k-1024b.txt
cat results/scenario3/256k/STD-UDP-256k-1024b.txt | grep sec | head -30 | tr - " " | awk '{print $4, $8}' > scripts/graphics/files/figure3c/STD-UDP-256k-1024b.txt
cd scripts/graphics/files/figure3c/
gnuplot figure3c.plot
cd ../../../../
