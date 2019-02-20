#!/bin/bash

echo -e "\nRunning EmergentSys.o of ESS Cloud Server!\n"

cd $HOME/EmergentSortService/pal

dana -sp '../repository;../Sort' EmergentSys.o 
