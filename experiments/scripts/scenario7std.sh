#! /bin/bash

echo 'Copying topology'
cp scripts/topologies/topology7std.json ./topology.json

echo 'Copying run_exercise'
cp scripts/run_exercise/run_exercise7std.py ../../utils/run_exercise.py

echo 'Coping ltp_proto'
cp scripts/backup/ltp_proto_std.p4 ./ltp_proto.p4

echo 'Copying topologies to scenario results'
cp topology.json results/scenario7/topologystd.json

echo 'Starting topology'
./run-me.sh

echo 'Restoring ltp_proto'
cp scripts/backup/ltp_proto.p4 ./ltp_proto.p4

echo 'Restoring topology'
cp scripts/backup/topology.json ./topology.json

echo 'Restoring run_exercise'
cp scripts/backup/run_exercise.py ../../utils/run_exercise.py
