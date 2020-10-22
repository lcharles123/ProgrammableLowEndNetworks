#! /bin/bash

echo 'Copying topology'
cp scripts/topologies/topology64.json ./topology.json

echo 'Copying run_exercise'
cp scripts/run_exercise/run_exercise64.py ../../utils/run_exercise.py

echo 'Copying topologies to scenario results'
cp topology.json results/scenario1/64k/LTP/
cp topology.json results/scenario2/64k/LTP/
cp topology.json results/scenario3/64k/LTP/
cp topology.json results/scenario4/64k/LTP/

echo 'Starting topology'
./run-me.sh

echo 'Restoring topology'
cp scripts/backup/topology.json ./topology.json

echo 'Restoring run_exercise'
cp scripts/backup/run_exercise.py ../../utils/run_exercise.py



