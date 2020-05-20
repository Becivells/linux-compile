main:main.o func.o
	gcc -o main main.o func.o

main.o: main.c
	gcc -c main.c -o main.o

func.o: func.c
	gcc -c func.c -o func.o

.PHONY:clean
clean:
	-rm -rf *.o
	-rm main