#!/bin/bash

echo "\nRunning EmergentSys.o of ESS Cloud Server!\n"

dana -sp '/home/ess-remote/EmergentSortService/repository;/home/ess-remote/EmergentSortService/Sort' \ 
/home/ess-remote/EmergentSortService/pal/MultiArmedBanditSort.o 
