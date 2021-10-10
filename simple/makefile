#nombre del ejecutable
TARGET = myprog
#todos los objetos de los que dependa el ejecutable
OBJS = main.o inc.o
#flags del compilador
CFLAGS = -Wall

#link del target con todos los objetos
$(TARGET) : $(OBJS)
	gcc $(CFLAGS) $(OBJS) -o $(TARGET)

#regla para compilar cada objeto
#ejemplo: gcc -c -Wall main.c -o main.o
#$< hace referencia a %.c
#$@ hace referencia a %.o
%.o : %.c
	gcc -c $(CFLAGS) $< -o $@

#limpia todos los .o y el ejecutable target
#se llama con make clean
.PHONY: clean
clean:
	rm -f *.o $(TARGET)