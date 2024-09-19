#/**
 #* @file Makefile
 #* @author Tucker Brown
 #* @date 2024-09-18
 #* @brief Creating the contents of the makefile to properly run all of the files
 #* 
 #* The makefile is responsible for compiling all code from the various files and cleaning the directory
 #*/

CC = g++ #the compiler
CFLAGS = -Wall -Wextra -g #compiles the contents with warnings and flags
TARGET = employee #the target executable that the compiler is running

all:	$(TARGET)

$(TARGET):	Employee.o Officer.o Supervisor.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o Officer.o Supervisor.o main.o 

Employee.o:	Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

Officer.o:	Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o:	Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

main.o:	main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) *.o *~ $(TARGET)

