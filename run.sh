#Kevin Lam

#Your cwid: 1097

#Your section number: 240-3

#kevinlawc@csu.fullerton.edu

#April 23

#Identifier: Final program.

#-----------------CODE---------------------------
#!/bin/bash

# Assembling getqword.asm and manager.asm
echo "Assembling getqword.asm..."
nasm -f elf64 -o getqword.o getqword.asm

echo "Assembling manager.asm..."
nasm -f elf64 -o manager.o manager.asm

# Compiling wecome.cpp
echo "Compiling wecome.cpp..."
g++ -c wecome.cpp -o wecome.o

# Linking object files (disable PIE here)
echo "Linking object files..."
g++ -no-pie -o getqword.out wecome.o manager.o getqword.o

# Running program
echo "Running program..."
./getqword.out

