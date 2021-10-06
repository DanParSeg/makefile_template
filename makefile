todo: prog.exe
vector.o: vector.h vector.cpp
	gxx -c vector.cpp -Wall
prog.o: prog.cpp vector.h
	gxx -c prog.cpp -Wall
prog.exe: prog.o vector.o
	gxx prog.o vector.o -o prog.exe
limpiar:
	
	del prog.o
	del vector.o
	del prog.exe