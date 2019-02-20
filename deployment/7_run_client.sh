#!/bin/bash

cd  $HOME/EmergentSortService/client

echo -e "\nCompiling directory client!\n"

dnc . -v 

echo -e "\nRunning Client!\n"

dana RaspClient.o
