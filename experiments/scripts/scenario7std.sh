#! /bin/bash

echo 'Copying topology'
cp ../experiments/scripts/topologies/topology7std.json ./topology.json

echo 'Copying run_exercise'
cp ../experiments/scripts/run_exercise/run_exercise7std.py ../utils/run_exercise.py

echo 'Copying ltp-proto'
cp ../standard/basic_tunnel.p4 ./ltp-proto.p4

echo 'Copying controllers'
cp ../standard/s1-runtime-wget.json ./s1-runtime-wget.json
cp ../standard/s2-runtime-wget.json ./s2-runtime-wget.json

echo 'Copying topologies to scenario results'
cp topology.json results/scenario7/topologystd.json

echo 'Starting topology'
./run-me.sh

echo 'Restoring topology'
cp ../experiments/scripts/backup/topology.json ./topology.json

echo 'Restoring run_exercise'
cp ../experiments/scripts/backup/run_exercise.py ../utils/run_exercise.py

echo 'Restoring ltp-proto'
cp ../experiments/scripts/backup/ltp-proto.p4 ./ltp-proto.p4

echo 'Restoring controllers'
cp ../experiments/scripts/backup/s1controller.py ./s1controller.py
cp ../experiments/scripts/backup/s2controller.py ./s2controller.py
cp ../experiments/scripts/backup/s3controller.py ./s3controller.py

echo 'Removing standard controllers'
rm s1-runtime-wget.json
rm s2-runtime-wget.json
