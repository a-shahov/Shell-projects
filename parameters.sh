#!/usr/bin/env bash

USERNAME=

echo ${USERNAME-$(whoami)}
echo ${USERNAME:-$(whoami)}

echo ${USERNAME=$(whoami)}
echo ${USERNAME:=$(whoami)}
echo ${USERNAME}

echo ${USERNAME:+WHAT?}

#####
echo ${USERNAME1-"test"}
echo ${USERNAME1:-"test"}
USERNAME1=
echo ${USERNAME1-"test"}
echo ${USERNAME1:-"test"}
#####

echo ${USERNAME1:?"USERNAME 1 not set"}
echo ${USERNAME1?"USERNAME 1 not set"}
