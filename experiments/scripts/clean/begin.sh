rm -R -f results

mkdir results

mkdir results/before
mkdir results/before/64k
mkdir results/before/128k
mkdir results/before/256k
mkdir results/before/512k
mkdir results/before/scenario5
mkdir results/before/scenario6
mkdir results/before/scenario7

mkdir results/before/scenario5/logs
mkdir results/before/scenario5/pcaps
mkdir results/before/scenario6/pcaps
mkdir results/before/scenario6/logs
mkdir results/before/scenario7/pcaps
mkdir results/before/scenario7/logs


mkdir results/before/64k/LTP
mkdir results/before/128k/LTP
mkdir results/before/256k/LTP
mkdir results/before/512k/LTP
mkdir results/before/64k/STD
mkdir results/before/128k/STD
mkdir results/before/256k/STD
mkdir results/before/512k/STD

mkdir results/before/64k/LTP/logs
mkdir results/before/128k/LTP/logs
mkdir results/before/256k/LTP/logs
mkdir results/before/512k/LTP/logs
mkdir results/before/64k/LTP/pcaps
mkdir results/before/128k/LTP/pcaps
mkdir results/before/256k/LTP/pcaps
mkdir results/before/512k/LTP/pcaps
mkdir results/before/64k/STD/logs
mkdir results/before/128k/STD/logs
mkdir results/before/256k/STD/logs
mkdir results/before/512k/STD/logs
mkdir results/before/64k/STD/pcaps
mkdir results/before/128k/STD/pcaps
mkdir results/before/256k/STD/pcaps
mkdir results/before/512k/STD/pcaps

mkdir results/scenario1
mkdir results/scenario2
mkdir results/scenario3
mkdir results/scenario4
mkdir results/scenario5
mkdir results/scenario6
mkdir results/scenario7

mkdir results/scenario5/tcp
mkdir results/scenario5/udp
mkdir results/scenario5/tcp/logs
mkdir results/scenario5/tcp/pcaps
mkdir results/scenario5/udp/logs
mkdir results/scenario5/udp/pcaps

mkdir results/scenario6/tcp
mkdir results/scenario6/tcp/logs
mkdir results/scenario6/tcp/pcaps

mkdir results/scenario7/LTP
mkdir results/scenario7/LTP/logs
mkdir results/scenario7/LTP/pcaps
mkdir results/scenario7/STD
mkdir results/scenario7/STD/logs
mkdir results/scenario7/STD/pcaps


mkdir results/scenario1/64k
mkdir results/scenario1/128k
mkdir results/scenario1/256k
mkdir results/scenario1/512k

mkdir results/scenario2/64k
mkdir results/scenario2/128k
mkdir results/scenario2/256k
mkdir results/scenario2/512k

mkdir results/scenario3/64k
mkdir results/scenario3/128k
mkdir results/scenario3/256k
mkdir results/scenario3/512k

mkdir results/scenario4/64k
mkdir results/scenario4/128k
mkdir results/scenario4/256k
mkdir results/scenario4/512k

mkdir results/scenario1/64k/LTP
mkdir results/scenario2/64k/LTP
mkdir results/scenario3/64k/LTP
mkdir results/scenario4/64k/LTP
mkdir results/scenario1/64k/STD
mkdir results/scenario2/64k/STD
mkdir results/scenario3/64k/STD
mkdir results/scenario4/64k/STD

mkdir results/scenario1/128k/LTP
mkdir results/scenario2/128k/LTP
mkdir results/scenario3/128k/LTP
mkdir results/scenario4/128k/LTP
mkdir results/scenario1/128k/STD
mkdir results/scenario2/128k/STD
mkdir results/scenario3/128k/STD
mkdir results/scenario4/128k/STD

mkdir results/scenario1/256k/LTP
mkdir results/scenario2/256k/LTP
mkdir results/scenario3/256k/LTP
mkdir results/scenario4/256k/LTP
mkdir results/scenario1/256k/STD
mkdir results/scenario2/256k/STD
mkdir results/scenario3/256k/STD
mkdir results/scenario4/256k/STD

mkdir results/scenario1/512k/LTP
mkdir results/scenario2/512k/LTP
mkdir results/scenario3/512k/LTP
mkdir results/scenario4/512k/LTP
mkdir results/scenario1/512k/STD
mkdir results/scenario2/512k/STD
mkdir results/scenario3/512k/STD
mkdir results/scenario4/512k/STD

mkdir results/scenario1/64k/LTP/tcp
mkdir results/scenario2/64k/LTP/tcp
mkdir results/scenario3/64k/LTP/tcp
mkdir results/scenario4/64k/LTP/tcp
mkdir results/scenario1/64k/STD/tcp
mkdir results/scenario2/64k/STD/tcp
mkdir results/scenario3/64k/STD/tcp
mkdir results/scenario4/64k/STD/tcp
mkdir results/scenario1/64k/LTP/udp
mkdir results/scenario2/64k/LTP/udp
mkdir results/scenario3/64k/LTP/udp
mkdir results/scenario4/64k/LTP/udp
mkdir results/scenario1/64k/STD/udp
mkdir results/scenario2/64k/STD/udp
mkdir results/scenario3/64k/STD/udp
mkdir results/scenario4/64k/STD/udp

mkdir results/scenario1/128k/LTP/tcp
mkdir results/scenario2/128k/LTP/tcp
mkdir results/scenario3/128k/LTP/tcp
mkdir results/scenario4/128k/LTP/tcp
mkdir results/scenario1/128k/STD/tcp
mkdir results/scenario2/128k/STD/tcp
mkdir results/scenario3/128k/STD/tcp
mkdir results/scenario4/128k/STD/tcp
mkdir results/scenario1/128k/LTP/udp
mkdir results/scenario2/128k/LTP/udp
mkdir results/scenario3/128k/LTP/udp
mkdir results/scenario4/128k/LTP/udp
mkdir results/scenario1/128k/STD/udp
mkdir results/scenario2/128k/STD/udp
mkdir results/scenario3/128k/STD/udp
mkdir results/scenario4/128k/STD/udp

mkdir results/scenario1/256k/LTP/tcp
mkdir results/scenario2/256k/LTP/tcp
mkdir results/scenario3/256k/LTP/tcp
mkdir results/scenario4/256k/LTP/tcp
mkdir results/scenario1/256k/STD/tcp
mkdir results/scenario2/256k/STD/tcp
mkdir results/scenario3/256k/STD/tcp
mkdir results/scenario4/256k/STD/tcp
mkdir results/scenario1/256k/LTP/udp
mkdir results/scenario2/256k/LTP/udp
mkdir results/scenario3/256k/LTP/udp
mkdir results/scenario4/256k/LTP/udp
mkdir results/scenario1/256k/STD/udp
mkdir results/scenario2/256k/STD/udp
mkdir results/scenario3/256k/STD/udp
mkdir results/scenario4/256k/STD/udp

mkdir results/scenario1/512k/LTP/tcp
mkdir results/scenario2/512k/LTP/tcp
mkdir results/scenario3/512k/LTP/tcp
mkdir results/scenario4/512k/LTP/tcp
mkdir results/scenario1/512k/STD/tcp
mkdir results/scenario2/512k/STD/tcp
mkdir results/scenario3/512k/STD/tcp
mkdir results/scenario4/512k/STD/tcp
mkdir results/scenario1/512k/LTP/udp
mkdir results/scenario2/512k/LTP/udp
mkdir results/scenario3/512k/LTP/udp
mkdir results/scenario4/512k/LTP/udp
mkdir results/scenario1/512k/STD/udp
mkdir results/scenario2/512k/STD/udp
mkdir results/scenario3/512k/STD/udp
mkdir results/scenario4/512k/STD/udp

mkdir results/scenario1/64k/LTP/tcp/logs
mkdir results/scenario2/64k/LTP/tcp/logs
mkdir results/scenario3/64k/LTP/tcp/logs
mkdir results/scenario4/64k/LTP/tcp/logs
mkdir results/scenario1/64k/STD/tcp/logs
mkdir results/scenario2/64k/STD/tcp/logs
mkdir results/scenario3/64k/STD/tcp/logs
mkdir results/scenario4/64k/STD/tcp/logs
mkdir results/scenario1/64k/LTP/udp/logs
mkdir results/scenario2/64k/LTP/udp/logs
mkdir results/scenario3/64k/LTP/udp/logs
mkdir results/scenario4/64k/LTP/udp/logs
mkdir results/scenario1/64k/STD/udp/logs
mkdir results/scenario2/64k/STD/udp/logs
mkdir results/scenario3/64k/STD/udp/logs
mkdir results/scenario4/64k/STD/udp/logs

mkdir results/scenario1/128k/LTP/tcp/logs
mkdir results/scenario2/128k/LTP/tcp/logs
mkdir results/scenario3/128k/LTP/tcp/logs
mkdir results/scenario4/128k/LTP/tcp/logs
mkdir results/scenario1/128k/STD/tcp/logs
mkdir results/scenario2/128k/STD/tcp/logs
mkdir results/scenario3/128k/STD/tcp/logs
mkdir results/scenario4/128k/STD/tcp/logs
mkdir results/scenario1/128k/LTP/udp/logs
mkdir results/scenario2/128k/LTP/udp/logs
mkdir results/scenario3/128k/LTP/udp/logs
mkdir results/scenario4/128k/LTP/udp/logs
mkdir results/scenario1/128k/STD/udp/logs
mkdir results/scenario2/128k/STD/udp/logs
mkdir results/scenario3/128k/STD/udp/logs
mkdir results/scenario4/128k/STD/udp/logs

mkdir results/scenario1/256k/LTP/tcp/logs
mkdir results/scenario2/256k/LTP/tcp/logs
mkdir results/scenario3/256k/LTP/tcp/logs
mkdir results/scenario4/256k/LTP/tcp/logs
mkdir results/scenario1/256k/STD/tcp/logs
mkdir results/scenario2/256k/STD/tcp/logs
mkdir results/scenario3/256k/STD/tcp/logs
mkdir results/scenario4/256k/STD/tcp/logs
mkdir results/scenario1/256k/LTP/udp/logs
mkdir results/scenario2/256k/LTP/udp/logs
mkdir results/scenario3/256k/LTP/udp/logs
mkdir results/scenario4/256k/LTP/udp/logs
mkdir results/scenario1/256k/STD/udp/logs
mkdir results/scenario2/256k/STD/udp/logs
mkdir results/scenario3/256k/STD/udp/logs
mkdir results/scenario4/256k/STD/udp/logs

mkdir results/scenario1/512k/LTP/tcp/logs
mkdir results/scenario2/512k/LTP/tcp/logs
mkdir results/scenario3/512k/LTP/tcp/logs
mkdir results/scenario4/512k/LTP/tcp/logs
mkdir results/scenario1/512k/STD/tcp/logs
mkdir results/scenario2/512k/STD/tcp/logs
mkdir results/scenario3/512k/STD/tcp/logs
mkdir results/scenario4/512k/STD/tcp/logs
mkdir results/scenario1/512k/LTP/udp/logs
mkdir results/scenario2/512k/LTP/udp/logs
mkdir results/scenario3/512k/LTP/udp/logs
mkdir results/scenario4/512k/LTP/udp/logs
mkdir results/scenario1/512k/STD/udp/logs
mkdir results/scenario2/512k/STD/udp/logs
mkdir results/scenario3/512k/STD/udp/logs
mkdir results/scenario4/512k/STD/udp/logs

mkdir results/scenario1/64k/LTP/tcp/pcaps
mkdir results/scenario2/64k/LTP/tcp/pcaps
mkdir results/scenario3/64k/LTP/tcp/pcaps
mkdir results/scenario4/64k/LTP/tcp/pcaps
mkdir results/scenario1/64k/STD/tcp/pcaps
mkdir results/scenario2/64k/STD/tcp/pcaps
mkdir results/scenario3/64k/STD/tcp/pcaps
mkdir results/scenario4/64k/STD/tcp/pcaps
mkdir results/scenario1/64k/LTP/udp/pcaps
mkdir results/scenario2/64k/LTP/udp/pcaps
mkdir results/scenario3/64k/LTP/udp/pcaps
mkdir results/scenario4/64k/LTP/udp/pcaps
mkdir results/scenario1/64k/STD/udp/pcaps
mkdir results/scenario2/64k/STD/udp/pcaps
mkdir results/scenario3/64k/STD/udp/pcaps
mkdir results/scenario4/64k/STD/udp/pcaps

mkdir results/scenario1/128k/LTP/tcp/pcaps
mkdir results/scenario2/128k/LTP/tcp/pcaps
mkdir results/scenario3/128k/LTP/tcp/pcaps
mkdir results/scenario4/128k/LTP/tcp/pcaps
mkdir results/scenario1/128k/STD/tcp/pcaps
mkdir results/scenario2/128k/STD/tcp/pcaps
mkdir results/scenario3/128k/STD/tcp/pcaps
mkdir results/scenario4/128k/STD/tcp/pcaps
mkdir results/scenario1/128k/LTP/udp/pcaps
mkdir results/scenario2/128k/LTP/udp/pcaps
mkdir results/scenario3/128k/LTP/udp/pcaps
mkdir results/scenario4/128k/LTP/udp/pcaps
mkdir results/scenario1/128k/STD/udp/pcaps
mkdir results/scenario2/128k/STD/udp/pcaps
mkdir results/scenario3/128k/STD/udp/pcaps
mkdir results/scenario4/128k/STD/udp/pcaps

mkdir results/scenario1/256k/LTP/tcp/pcaps
mkdir results/scenario2/256k/LTP/tcp/pcaps
mkdir results/scenario3/256k/LTP/tcp/pcaps
mkdir results/scenario4/256k/LTP/tcp/pcaps
mkdir results/scenario1/256k/STD/tcp/pcaps
mkdir results/scenario2/256k/STD/tcp/pcaps
mkdir results/scenario3/256k/STD/tcp/pcaps
mkdir results/scenario4/256k/STD/tcp/pcaps
mkdir results/scenario1/256k/LTP/udp/pcaps
mkdir results/scenario2/256k/LTP/udp/pcaps
mkdir results/scenario3/256k/LTP/udp/pcaps
mkdir results/scenario4/256k/LTP/udp/pcaps
mkdir results/scenario1/256k/STD/udp/pcaps
mkdir results/scenario2/256k/STD/udp/pcaps
mkdir results/scenario3/256k/STD/udp/pcaps
mkdir results/scenario4/256k/STD/udp/pcaps

mkdir results/scenario1/512k/LTP/tcp/pcaps
mkdir results/scenario2/512k/LTP/tcp/pcaps
mkdir results/scenario3/512k/LTP/tcp/pcaps
mkdir results/scenario4/512k/LTP/tcp/pcaps
mkdir results/scenario1/512k/STD/tcp/pcaps
mkdir results/scenario2/512k/STD/tcp/pcaps
mkdir results/scenario3/512k/STD/tcp/pcaps
mkdir results/scenario4/512k/STD/tcp/pcaps
mkdir results/scenario1/512k/LTP/udp/pcaps
mkdir results/scenario2/512k/LTP/udp/pcaps
mkdir results/scenario3/512k/LTP/udp/pcaps
mkdir results/scenario4/512k/LTP/udp/pcaps
mkdir results/scenario1/512k/STD/udp/pcaps
mkdir results/scenario2/512k/STD/udp/pcaps
mkdir results/scenario3/512k/STD/udp/pcaps
mkdir results/scenario4/512k/STD/udp/pcaps





