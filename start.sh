#!/bin/bash

RTR=/home/$USER/freeRouter/rtr.jar
HWSW=$PWD/

tmux new-session -d -s latinoware 'java -jar '$RTR' routersc '$HWSW'r1-hw.txt '$HWSW'r1-sw.txt'
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r2-hw.txt '$HWSW'r2-sw.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r3-hw.txt '$HWSW'r3-sw.txt' ENTER;
tmux split-window -h -t 2 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r4-hw.txt '$HWSW'r4-sw.txt' ENTER;
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'dtn1-hw.txt '$HWSW'dtn1-sw.txt' ENTER;
tmux split-window -v -t 2 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'dtn2-hw.txt '$HWSW'dtn2-sw.txt' ENTER;
tmux select-layout tiled
tmux a;
