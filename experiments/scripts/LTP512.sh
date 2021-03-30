#! /bin/bash

echo 'Copying topology'
cp ../experiments/scripts/topologies/topology512.json ./topology.json

echo 'Copying run_exercise'
cp ../experiments/scripts/run_exercise/run_exercise512.py ../utils/run_exercise.py

echo 'Copying topologies to scenario results'
cp topology.json results/scenario1/512k/LTP/
cp topology.json results/scenario2/512k/LTP/
cp topology.json results/scenario3/512k/LTP/
cp topology.json results/scenario4/512k/LTP/

echo 'Starting topology'
./run-me.sh

echo 'Restoring topology'
cp ../experiments/scripts/backup/topology.json ./topology.json

echo 'Restoring run_exercise'
cp ../experiments/scripts/backup/run_exercise.py ../utils/run_exercise.py