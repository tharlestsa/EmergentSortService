# Emergent Sort Service

The basic idea of this project is, the clients will send their datas to our server and the Emergent Sort Service will find the better solution for sort the informations. For example, an university they have a enroled students list and want get sort for any attribute (name, course, enroled code, final grade).

The Emergent Sort Service will be able of to sort and to mensurable the performance of all sort options and self-optimize for get the best response time to client. If necessary, the service can use both local or parallel processing. And, in the optimize process, the mecanism will use determinated metrics as time and performance cost, lining up with the concept green computing.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

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

1. You need to compile the programa .dn 

```
dnc Main.dn
```
You can now run the program with the command:

```
dana Main.o
```

## Built With

* [Project Dana](http://www.projectdana.com/) - The programming language of this project
* [PAL](http://www.projectdana.com/) - Framework -  Perception, Assembly and Learning (PAL)

## Authors

* **Ramon José de Sousa Araújo** - *CS Undergrad* - [GitHub](https://github.com/ramonjsa)
* **Marcos Felipe Barboza de Abreu** - *CS Undergrad* - [GitHub](https://github.com/marcosfelipp)
* **Rosângela Divina de Sousa Santana** - *CS Master* - [GitHub](https://github.com/rosousas)
* **Tharles de Sousa Andrade** - *CS Undergrad* - [GitHub](https://github.com/tharlestsa)
* **Larissa Ramos Marques Silva** - *CS Master* - [GitHub](https://github.com/larissaramosm)

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/tharlestsa/EmergentSortService/blob/master/LICENSE) file for details

## Acknowledgments

* Learn to build systems self-management ans self-learning
* ..
