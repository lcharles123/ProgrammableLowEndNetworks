#!/bin/sh

sudo python s1controller.py \
    --p4info build/ltp-proto.p4.p4info.txt \
    --bmv2-json build/ltp-proto.json
