#! /bin/bash

echo 'Copying topology'
cp scripts/topologies/topology256std.json ./topology.json

echo 'Copying run_exercise'
cp scripts/run_exercise/run_exercise256std.py ../../utils/run_exercise.py

echo 'Coping ltp_proto'
cp scripts/backup/ltp_proto_std.p4 ./ltp_proto.p4

echo 'Copying topologies to scenario results'
cp topology.json results/scenario1/256k/STD/
cp topology.json results/scenario2/256k/STD/
cp topology.json results/scenario3/256k/STD/
cp topology.json results/scenario4/256k/STD/

echo 'Starting topology'
./run-me.sh

echo 'Restoring ltp_proto'
cp scripts/backup/ltp_proto.p4 ./ltp_proto.p4

echo 'Restoring topology'
cp scripts/backup/topology.json ./topology.json

echo 'Restoring run_exercise'
cp scripts/backup/run_exercise.py ../../utils/run_exercise.py
