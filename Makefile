CC = fasm
.PHONY: default build run
default: build run
build: main.asm $(LIBS_OBJ)
	$(CC) main.asm
	ld main.o $(LIBS_OBJ) -o main
run: main
	./main
