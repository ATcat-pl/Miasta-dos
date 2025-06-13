floppy.img: bin/miasta.exe
	dd if=/dev/zero of=floppy.img count=1440 bs=1k
	mkfs.msdos floppy.img
	mcopy -i floppy.img bin/miasta.exe ::/

bin/miasta.exe: build/main.obj
	@ mkdir -p bin
	wlink sys dos name bin/miasta.exe opt start=_start file build/main.obj

build/main.obj: src/main.asm
	@ mkdir -p build
	nasm -f obj -o build/main.obj src/main.asm

