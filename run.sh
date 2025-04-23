#Kevin Lam

#Your cwid: 1097

#Your section number: 240-3

#kevinlawc@csu.fullerton.edu

#April 23

#Identifier: Final program.

#-----------------CODE---------------------------
#!/bin/bash

echo "Assembling getqword.asm and manager.asm"
nasm -f elf64 -o getqword.o getqword.asm
nasm -f elf64 -o manager.o manager.asm

echo "Compiling welcome.cpp"
g++ -c -m64 -o welcome.o welcome.cpp -Wall -no-pie -std=c++17

echo "Linking object files"
g++ -m64 -o getqword.out welcome.o manager.o getqword.o -no-pie -std=c++17

echo "Running program"
./getqword.out
