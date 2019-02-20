#!/bin/bash

echo "\nCompiling ESS Cloud Server!\n"

dnc $HOME/EmergentSortService/pal/ -v -sp "$HOME/EmergentSortService/pal/repository;$HOME/EmergentSortService/pal/Sort"
dnc $HOME/EmergentSortService/Sort -v
dnc $HOME/EmergentSortService/repository -v

echo "\nRemoving file remoteSort.o!\n"
rm $HOME/EmergentSortService/Sort/sort/remoteSort.o

echo "\nCompilation finish!\n"