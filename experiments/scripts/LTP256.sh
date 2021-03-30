#! /bin/bash

echo 'Copying topology'
cp ../experiments/scripts/topologies/topology256.json ./topology.json

echo 'Copying run_exercise'
cp ../experiments/scripts/run_exercise/run_exercise256.py ../utils/run_exercise.py

echo 'Copying topologies to scenario results'
cp topology.json results/scenario1/256k/LTP/
cp topology.json results/scenario2/256k/LTP/
cp topology.json results/scenario3/256k/LTP/
cp topology.json results/scenario4/256k/LTP/

echo 'Starting topology'
./run-me.sh

echo 'Restoring topology'
cp ../experiments/scripts/backup/topology.json ./topology.json

echo 'Restoring run_exercise'
cp ../experiments/scripts/backup/run_exercise.py ../utils/run_exercise.py