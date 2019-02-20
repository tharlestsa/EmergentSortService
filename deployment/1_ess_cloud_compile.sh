#!/bin/bash

echo "\nCompiling ESS Cloud Server!\n"

cd $HOME/EmergentSortService/pal/

dnc . -v -sp "../repository;../Sort"

dnc $HOME/EmergentSortService/Sort -v
dnc $HOME/EmergentSortService/repository -v

echo "\nRemoving file remoteSort.o!\n"
rm $HOME/EmergentSortService/Sort/sort/remoteSort.o

echo "\nCompilation finish!\n"