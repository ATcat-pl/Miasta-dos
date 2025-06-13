build/miasta.exe: build/main.obj
	@ mkdir -p bin
	wlink sys dos name bin/miasta.exe opt start=_start file build/main.obj

build/main.obj: src/main.asm
	@ mkdir -p build
	nasm -f obj -o build/main.obj src/main.asm

