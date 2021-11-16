# Programmable Low-End Networks - Experiments

## Introduction

The analysis of our Protocol (LTP) and a network without the use of this protocol, called the standard network (STD) was carried out under the angle of some scenarios.


- Scenario 1 - Compares structure using the LTP protocol and standard structure with the variation of the links in 64 kbps, 128 kbps, 256 kbps and 512 kbps and varying protocol between UDP and TCP, considering a payload of 128 bytes.
- Scenario 2 - Compare structure using the LTP protocol and standard structure with the variation of the links in 64 kbps, 128 kbps, 256 kbps and 512 kbps and varying protocol between UDP and TCP, considering a payload of 512 bytes.
- Scenario 3 - Compare structure using the LTP protocol and standard structure with the variation of the links in 64 kbps, 128 kbps, 256 kbps and 512 kbps and varying protocol between UDP and TCP, considering a payload of 1024 bytes.
- Scenario 4 - Compare structure using the LTP protocol and standard structure with the variation of the links in 64 kbps, 128 kbps, 256 kbps and 512 kbps and varying protocol between UDP and TCP, considering a payload limited to MTU.

- Scenario 5 - Analyzes the structure with the LTP protocol using 256 kbps links, UDP packets between 2 hosts of each switch. h1-> h4, h7-> h2, h5-> h8

- Scenario 6 - Analyzes the structure with the LTP protocol using 256 kbps links, UDP packets in a network with 2 switches and 5 stations each.
```
h1 ----+                            +---- h6
h2 ----+                            +---- h7
h3 ----+---- s1 ---- s4 ---- s2 ----+---- h8
h4 ----+                            +---- h9
h5 ----+                            +---- h10
```

- Scenario 7 - Analysis of the download of a file from the internet by a host connected to a switch (s2) that is connected to a second switch (s1) with an internet connection. The connection between the two switches uses the LTP protocol and a 256 kbps link.

```
internet ----+---- s1 ----  s2 ----+---- h1
```

Excluding scenario 6 and 7, all other scenarios use the initial topology of 3 switches and 3 stations on each switch.
```
h1 ----+                            +---- h4
       |                            |
h2 ----+---- s1 ---- s4 ---- s2 ----+---- h5
       |             |              |
h3 ----+             |              +---- h6
                     s3
                     |
                     |
                +----+----+
                |    |    |
                |    |    |
               h7    h8   h9
```

Before demonstrating how these pre-configured experiments are carried out, it is necessary to understand the structure of the folders.


## Experiments folders structure

The experiments folder is organized as follows.

experiments/plots/ => It has subfolders with figures used in the article. Each subfolder has Iperf3 logs prepared for Gnuplot, the plot file used and the resulting EPS image.

experiments/scripts/ => It has the scripts to run the experiments in the scenarios above.

experiments/scripts/backup/ => has a backup of the standard ltp-proto.p4, run_exercise.py, controllers and topology files. As the experiments are automated, these files are replaced by specific files and prepared for each experiment. After run the experiments, the base files are restored.

experiments/scripts/clean/ => has cleanup and startup scripts. The cleaning scripts (which start with the name clean) are called by the experiment scripts. The begin.sh script is used to create or recreate the structure where the results of the experiments will be stored, as we will see below.

experiments/scripts/graphics/ => has scripts and files for generating graphics stored in experiments/plots/

experiments/scripts/run_exercise/ => has versions of run_exercise.py specific to each experiment with the necessary adjustments for protocol variation (TCP and UDP), payload size (128 bytes, 512 bytes, 1024 bytes and limited to the MTU size ) and bandwidth speed defined in the topology.json file. These files are copied by the script for each experiment.

experiments/scripts/topologies/ => It has versions of topology.json specific to each experiment with the necessary bandwidth and station adjustments. These files are copied by the script for each experiment.


## Running experiments

IMPORTANT: To perform all experiments you must be positioned in the ltp-proto folder.


```
(terminal 0)# cd ltp-proto/
```


### Initializing the data storage structure and understanding its structure

Before starting the experiments, it is necessary to create the necessary folder structure to store the results of the experiments. In these folders are stored the topology used, the logs of iperf3 in addition to the pcaps and logs of the switches.

To do so, positioned in the ltp-proto folder, just run the startup script, begin.sh.

```
(terminal 0)# ../experiments/scripts/clean/begin.sh
```

ATTENTION: This script eliminates the previous folder structure and recreates. In this way, once executed, it will delete all the results previously stored in this folder structure.

This script creates the "results" subfolder structure organized as follows.

Basically the structure created has a tree to store the initialization information (before the experiments) defined by the results/before/ subfolder and another destined to store the results of each experiment, defined by the subfolders in the results/scenarioX pattern where X is the identification of the scenario number.

To organize the results, these two trees were structured to meet the variations as shown below.

To store the initialization information, the /results/before tree was structured according to the format:
results/before/link/net/info
Where:
- link: determines the speed of the analyzed link (in kbps). Can vary between 64k, 128k, 256k and 512k
- net: determines whether the network will be standard (STD) or using the developed protocol (LTP). Thus, it can vary between STD and LTP.
- info: determines the type of information stored. It can vary between logs and pcaps.

In this way, the results /before/512k/LTP/ logs folder stores the initial logs (before) of the experiment using the LTP protocol on a 512 kbps link network.

In a similar way, the folders destined to the results of the scenarios follow the structure following the format:

results/scenarioX/link/net/proto/info
Where:
- scenarioX: determines the number of the scenario. It can vary between scenario1, scenario2, scenario3, scenario4, scenario5, scenario6 and scenario7.
- link: determines the speed of the analyzed link. Can vary between 64k, 128k, 256k and 512k
- net: determines whether the network will be standard (STD) or using the developed protocol (LTP). Can vary between STD and LTP
- proto: determines which protocol is being used to analyze the network. It can vary between TCP and UDP.
- info: determines the type of information stored. It can vary between logs and pcaps.

Thus, the results/scenario4/512k/LTP/udp/logs folder, for example, stores the scenario4 logs (payload limited to MTU) with a 512 kbps link, using the LTP protocol and analyzing UDP traffic.

As scenarios 5, 6 and 7 have no link speed variation, this level in the subfolder tree of these scenarios was excluded.
In scenarios 5 and 6 the subfolder level of the network was also excluded because only the network is analyzed using the developed protocol (LTP).
In the same way as in scenario 7, the protocol level was excluded since there is no variation between TCP and UDP.


## Running the pre-configured scripts

Since the basis of scenarios 1 to 4 is the variation of the payload, to meet all the above experiments and avoid numerous migrations between network simulations, the scripts were grouped by link speed, that is, when the experiment was performed on a given link speed, the script already collects and stores all variations of payload and protocol for each of the four scenarios and already stores in the corresponding folder.
 

The nomenclature of the scripts to attend each of the simulations of the first four scenarios follows the following structure.

AAAXXX.sh 
Where:
- AAA: indicates whether the network will use the proposed protocol. It can vary between LTP (uses the protocol) and STD (a standard network without the protocol).
- XXX: Indicates the speed of the link between the switches. It can vary in 64, 128, 256 and 512 (kbps).

So, if you want to run the experiments of the first four scenarios for a speed of 64 kbps on a standard network,
just be positioned in the ltp-proto folder and execute the corresponding script in the scripts folder, that is, in this example, the following command should be executed:

```
(terminal 0)# ../experiments/scripts/STD64.sh
```

Likewise, to perform the experiments of the first four scenarios for a speed of 64 kbps on a network with the LTP protocol, just be positioned in the ltp-proto folder and run the corresponding script from the scripts folder.

```
(terminal 0)# ../experiments/scripts/LTP64.sh
```

It is important to note that, as previously described, for networks using the LTP protocol, it is necessary to open 3 auxiliary terminals and execute the controllers' initialization scripts. As this execution should take place only after the network is set up, we include the warning "Start Controllers. Waiting 10s". In this way, the simulator will wait 10 seconds to continue the experiments, a time that must be used by the user to start the controllers.

```
(terminal 1)# ./start_s1_controler.sh

(terminal 2)# ./start_s2_controler.sh

(terminal 3)# ./start_s3_controler.sh
```

To run the experiments at the other link speeds, just change the name of the script following the nomenclature pattern recorded above.

As scenarios 5 and 6 analyze only the execution with the LTP protocol without comparing it to a standard scenario, to run these experiments, just run the specific scripts:

For scenario 5:
```
(terminal 0)# ../experiments/scripts/scenario5.sh
```

For scenario 6:
```
(terminal 0)# ../experiments/scripts/scenario6.sh
```

Scenario 7 compares the network with the LTP protocol with a Standard network (STD), thus having scripts for each of the networks.

For scenario 7 with LTP network:

```
(terminal 0)# ../experiments/scripts/scenario7.sh
```

For scenario 7 with STD network:
```
(terminal 0)# ../experiments/scripts/scenario7std.sh
```

In summary, the processes performed by the scripts above are:

- Copy the topology suitable for the experiment
- Copy the specific run_exercise for the experiment
- When necessary, copy the specific controllers for the experiment.
- Make a copy of the topology file for the results tree, to keep it stored with the results.
- Start topology, run experiments.

After ending the experiment.
- Restores the initial topology from backup
- Restores the initial run_exercise from backup
- Restores the initial controllers from the backup (when they were changed).



## Understanding the structure of automated run_exercise

The run_exercise.py file was defined in the P4 tutorials and is responsible for running the network simulation and, therefore, reads the topology and P4 code files of the switch.

In this way, we changed the run_exercise files used by the scripts that automate the simulations, including, after the network is assembled, the code that performs the desired tests.

Therefore, the specific code for each experiment is in the run_exercise files between the comments "## Begin Scenario" and "## End Scenario".

If the experiment is using the LTP protocol, the first commands in the custom file are the warning to start the "Start Controllers. Waiting 10s" controllers. As noted, with this warning the user will have 10 seconds to start the controllers (which should only be started at this point).
After this time, the tests will continue.
Initially the automation sets variables for the hosts and switches involved and turns off the TCP segmentators.

The network will ping 10 packets between the hosts involved in the tests. As a result, the controller tables are already filled.

The logs and pcaps files from this initialization are stored in the corresponding "before" folders according to the structure explained above.

The files generated and stored previously by this experiment are eliminated. If you want to ignore this cleaning, just comment the line that has the clean command for this link and network speed.

In the example:
```
h1.cmd ('../ experiments / scripts / clean / clean_64LTP.sh')
```

Once the network is initialized, the experiments start specifically.

Each variation in the experiment is identified with a message containing Scenario, protocol, speed and size of the payload, that is,
in the message "Scenario1 UDP - 64K - Payload 128 Bytes" the experiment of scenario 1 is being carried out, considering the UDP protocol, a 64 kbps link and a payload of 128 bytes.

Iperf3 is started on the server, displaying the results every 30 seconds and storing in the file stored in the results structure.
In the experiment mentioned above, for example, the log generated will be the file stored in results/scenario1/64k/LTP-UDP-64k-128b.txt.

The Iperf3 host client starts shooting for 900 seconds (to generate 30 observations), obeying the protocol, duration, interval and payload of the current experiment.

Once completed, to avoid participation in later simulations, the iperf3 process is killed.

The logs and pcaps files from the experiment are stored and cleaned, leaving the structure ready to start the next experiment, this one identified again by the identification message, for example "Scenario1 TCP - 64K - Payload 128 Bytes". In this case, the TCP variation of the previous experiment.

If you want to run only one experiment in this scenario, just comment the others with (""").


## Errors and problems.

### When initializing the controller, the message "gRPC Error: failed to connect to all addresses (UNAVAILABLE)" appears.
Indicates that the mininet has not yet set up the network that will be administered by the controller.
If you are running one of the scripts above, wait for the "Start Controllers. Waiting 10s" warning
If you are running the standard network with the command ./run-me, wait for the mininet prompt to be available.

### When starting a network, compilation errors 

Such as
```
../utils/Makefile:36: recipe for target 'run' failed
make: *** [run] Error 1
```
The execution of the previous simulation did not end correctly, and it is necessary to stop and clean this execution.
To do this, simply run the "make stop" and "make clean" commands and re-run the desired simulation.

### Network simulation with the LTP protocol does not present results for tests such as iperf3 or there is no ping between stations.

Check that the controllers have started properly. If not, it is necessary to open 3 auxiliary terminals and execute the controllers' initialization scripts.

```
(terminal 1)# ./start_s1_controler.sh

(terminal 2)# ./start_s2_controler.sh

(terminal 3)# ./start_s3_controler.sh
```

## Plotting experiments

After running the experiments above, it is possible to use the scripts in the experiments/scripts/graphics folder to plot the results according to the 12 files available below.

- figure1a.sh: plot the three flows of scenario 5, TCP protocol. h1-> h4, h7-> h2, h5-> h8
- figure1b.sh: plot the three flows of scenario 5, UDP protocol. h1-> h4, h7-> h2, h5-> h8
- figure1c.sh: plot the five flows of scenario 6, TCP protocol. h1-> h6, h2-> h7, h3-> h8, h4-> h9, h5-> h10
- figure2a.sh: plot the four streams of scenario 1 (128 bytes payload), TCP protocol, changing the four link speeds (64 kbps, 128 kbps, 256 kbps and 512 kbps)
- figure2b.sh: plot the four streams of scenario 1 (128 bytes payload), UDP protocol, changing the four link speeds (64 kbps, 128 kbps, 256 kbps and 512 kbps)
- figure2c.sh: plot the four streams of scenario 2 (512 bytes payload), TCP protocol, changing the four link speeds (64 kbps, 128 kbps, 256 kbps and 512 kbps)
- figure2d.sh: plot the four streams of scenario 2 (512 bytes payload), UDP protocol, changing the four link speeds (64 kbps, 128 kbps, 256 kbps and 512 kbps)
- figure3a.sh: plot scenario 1 (128 bytes payload), UDP protocol, 256 kbps link comparing performance with LTP and STD.
- figure3b.sh: plot scenario 2 (512 bytes payload), UDP protocol, 256 kbps link comparing performance with LTP and STD.
- figure3c.sh: plot scenario 3 (1024 bytes payload), UDP protocol, 256 kbps link comparing performance with LTP and STD.
- figure3d.sh: plot scenario 4 (payload limited to the protocol MTU), UDP protocol, 256 kbps link comparing performance with LTP and STD.
- figure4.sh: plot scenario 7 (download file from internet), 256 kbps link, comparing performance with LTP and STD.

To run the scripts, just be positioned in the ltp-proto folder and execute as shown in the example below that executes the figure1a script.

```
(terminal 0)# ../experiments/scripts/graphics/figure1a.sh
```

Analyzing the scripts it is possible to observe that, the activities carried out by the same are:

- Using text extraction tools on the results files saved in the results folder and their respective subfolders, creates a new file with two columns (collection time, collected measurement) (x, y) to be treated by gnuplot.
- It is positioned in the folder of the respective image and executes gnuplot using the corresponding plot file as a parameter.
- Make a backup copy of the files (files treated with measurements, plot file of the figure and EPS image of the graphic) to folder experiments/plots/
- Position yourself again in the ltp-proto folder.
