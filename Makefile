CC = g++
CFLAGS = -Wall -Wextra -g
TARGET = employee

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

