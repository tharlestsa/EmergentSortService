#!/bin/bash

echo "\nCompiling ESS Cloud Server!\n"

cd $HOME/EmergentSortService/pal/

dnc . -v -sp "../repository;../Sort"

echo "\nCompiling directory Sort!\n"
cd .. ; cd Sort/
dnc . -v

echo "\nCompiling directory repository!\n"
cd .. ; cd repository/
dnc . -v

echo "\nRemoving file remoteSort.o!\n"
rm $HOME/EmergentSortService/Sort/sort/remoteSort.o

echo "\nCompilation finish!\n"