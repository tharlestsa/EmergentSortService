#!/bin/bash

echo "\nRunning EmergentSys.o of ESS Local Server!\n"

dana -sp '$HOME/pal/repository;$HOME/EmergentSortService/pal/Sort' \
 $HOME/EmergentSortService/pal/EmergentSys.o 
