CC = g++
CFLAGS = -c -Wall -Wextra -g
TARGET = Employee.o Officer.o Supervisor.o main.o

all:	employee

employee:	Employee.o Officer.o Supervisor.o main.o
	$(CC) $(CFLAGS) -o employees $(TARGET)

Employee.o:	Employee.cpp Employee.h
	$(CC) $(CFLAGS) Employee.cpp

Officer.o:	Officer.cpp Officer.h
	$(CC) $(CFLAGS) Officer.cpp

Supervisor.o:	Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) Supervisor.cpp

main.o:	main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) main.cpp

clean:
	$(RM) *.o *~

