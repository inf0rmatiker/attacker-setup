#!/bin/bash

# ZSH
sudo apt-get update && sudo apt-get install build-essential make
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .vimrc .zshrc ~

# hping3
sudo apt-get install hping3

# slowhttptest
sudo apt-get install slowhttptest

# SoulTaker Multitool
cd ~ && git clone https://github.com/Xooppp/SoulTaker-Multitool.git

# Sock Stress
cd ~ && git clone https://github.com/pan0pt1c0n/Python-SockStress.git

# CC Attack
cd ~ && git clone https://github.com/Leeon123/CC-attack.git

# DDoS Scripts (Layer 4 and Layer 7 attack scripts variety)
cd ~ && git clone https://github.com/PraneethKarnena/DDoS-Scripts.git

# RavenStorm
curl -s https://raw.githubusercontent.com/Taguar258/Raven-Storm/master/install.sh | sudo bash -s

# Unstable DDoS
cd ~ && git clone https://github.com/iJoshoa/UnstableDDoS.git

