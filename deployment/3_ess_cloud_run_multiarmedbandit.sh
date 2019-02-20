#!/bin/bash

echo -e "\nRunning MultiArmedBanditSort.o of ESS Cloud Server!\n"

cd $HOME/EmergentSortService/pal

dana -sp '../repository;../Sort' MultiArmedBanditSort.o 
