FROM ubuntu:focal
RUN apt update && apt -y upgrade
RUN apt -y install gcc-10-mipsisa64r6-linux-gnuabi64
RUN apt -y install qemu-user
RUN apt -y install vim tmux python git
ENTRYPOINT tmux new -s ac