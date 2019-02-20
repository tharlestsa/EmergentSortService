#!/bin/bash

echo -e "\nCompiling ESS Cloud Server!\n"

cd $HOME/EmergentSortService/pal/

dnc . -v -sp "../repository;../Sort"

echo -e "\nCompiling directory Sort!\n"
cd .. ; cd Sort/
dnc . -v

echo -e "\nCompiling directory repository!\n"
cd .. ; cd repository/
dnc . -v

echo -e "\nRemoving file remoteSort.o!\n"
rm $HOME/EmergentSortService/Sort/sort/remoteSort.o

echo -e "\nCompilation finish!\n"