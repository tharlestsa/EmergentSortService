#!/bin/bash

echo "\nCompiling ESS Local Server!\n"

dnc $HOME/EmergentSortService/pal/ -v -sp "$HOME/EmergentSortService/pal/repository;$HOME/EmergentSortService/pal/Sort"
dnc $HOME/EmergentSortService/Sort -v
dnc $HOME/EmergentSortService/repository -v

echo "\nCompilation finished!\n"