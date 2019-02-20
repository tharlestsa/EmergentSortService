# Emergent Sort Service (ESS)

## Overview 

The basic idea of this project is, the clients will send data to the server and the ESS will find the better solution for sort the informations. For example, an university they have a enrolled students list and want get sort for any attribute (name, course, enrolled code, final grade). For the sort the information the system works with the many algorithms as bubble sort, Heapsort, Quicksort, Insertion and Selection sort that will be sort the data received by a clients. The ESS will be able of to sort and measure the performance of all sort options and self-optimize for get the best response time to client. The service can use both local or remote processing. And, in the optimize process, the mechanism will use determined metrics as time and performance cost, lining up with the concept green computing.
The case Study is sorting system but we can generalise the components for any function, for example the Raspberry can be one gateway (Fog computing), the clients can be sensors, differents algorithms will be used to sort locally or in Cloud.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project.

### Prerequisites

* Dana - Programming language
* PAL  - Framework 

### Installing

Follow the steps for to get a development environment

1. Get the Dana from (http://www.projectdana.com/) according the version of your operating system (OS).
Then, extract the .zip file into your home directory in Linux so that you have a folder called “dana”. 
Inside the dana folder should be the files “dana”, “dnc”, “License.txt” etc.

2. Open a terminal window and change into the “dana” directory.

```
sudo chmod +x dana dnc
```
This tells Linux to allow these two files to be executable.

3. We set an environment variable DANA_HOME for the local user and also tell Linux where to find
the Dana compiler and runtime executables. 

```
echo “export DANA_HOME=/home/your_username/dana/” >> ~/.bashrc
echo “PATH=$PATH:$DANA_HOME” >> ~/.bashrc
```
Note that you need to replace your_username with the local username in your Linux environment.
This completes your Dana installation. To allow the new environment variables to take effect you’ll need
to log out of your session and log back in.

## Deployment

We have three differents environments: ESS Cloud Server, ESS Local Server and Clients. Each env have differents scripts for to compile and run the Emergent Sort Service. 

### ESS Cloud Server

For to simulate a server running on the cloud, we expose a computer through Internet located somewhere in Goiânia-GO. This computer will be our ESS Cloud Server. 

1. There is a directory named deployment in this repository that have same scripts, for this env you only have to run the script with ess_cloud. So, first you have to compile the ESS Cloud Server.    

```
./1_ess_cloud_compile.sh 
```

2. You need to run the EmergentSys

```
./2_ess_cloud_run_emergentsys.sh 
```

3. In other ssh connection, you have to run the MultiArmedBanditSort

```
./3_ess_cloud_run_multiarmedbandit.sh
```

### ESS Local Server

The ESS Local Server will recieve dataset of the clients and find the better algorithm for sort and to make the next composition of the system. In addition, this ESS can send the data to the ESS Cloud Server for sort tha data too. 

1. In directory called deployment, you only have to run the script with ess_local. First, you have to compile the ESS Local Server.    
```
./4_ess_local_compile.sh 
```

2. Then, you need to run the EmergentSys

```
./5_ess_local_run_emergentsys.sh 
```

3. In other terminal, you have to run the MultiArmedBanditSort

```
./6_ess_local_run_multiarmedbandit.sh
```

### Clients

The clients can be a raspberry or other computer that will send dataset to ESS Local Server. 

1. In directory called deployment, you only have to run the script with run_client.     
```
./7_run_client.sh 
```

Note: The clients have to be the last part of the ESS. 

## Built With

* [Project Dana](http://www.projectdana.com/) - The programming language of this project
* [PAL](http://www.projectdana.com/) - Framework -  Perception, Assembly and Learning (PAL)

## Authors

* **Ramon José de Sousa Araújo** - *CS Undergrad* - [GitHub](https://github.com/ramonjsa)
* **Marcos Fellipe Barboza de Abreu** - *CS Undergrad* - [GitHub](https://github.com/marcosfelipp)
* **Rosângela Divina de Sousa Santana** - *CS Master* - [GitHub](https://github.com/rosousas)
* **Tharles de Sousa Andrade** - *CS Undergrad* - [GitHub](https://github.com/tharlestsa)
* **Larissa Ramos Marques Silva** - *CS Master* - [GitHub](https://github.com/larissaramosm)

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/tharlestsa/EmergentSortService/blob/master/LICENSE) file for details
