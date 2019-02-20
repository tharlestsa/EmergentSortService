#!/bin/bash

echo "\nRunning EmergentSys.o of ESS Cloud Server!\n"

dana -sp '$HOME/EmergentSortService/repository;$HOME/EmergentSortService/Sort' \ 
$HOME/EmergentSortService/pal/MultiArmedBanditSort.o 
