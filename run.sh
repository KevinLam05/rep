#Kevin Lam

#Your cwid: 1097

#Your section number: 240-3

#kevinlawc@csu.fullerton.edu

#April 23

#Identifier: Final program.

#-----------------CODE---------------------------
#!/bin/bash

# Echo message to indicate the process has started
echo "Assembling getqword.asm and manager.asm"

# Assemble the getqword.asm and manager.asm files
nasm -f elf64 -o getqword.o getqword.asm
nasm -f elf64 -o manager.o manager.asm

# Check if the assembly files were successfully assembled
if [ $? -ne 0 ]; then
    echo "Error assembling the ASM files."
    exit 1
fi

# Echo message to indicate compilation of C++ file
echo "Compiling wecome.cpp"

# Compile the wecome.cpp C++ source file into an object file
g++ -c wecome.cpp -o wecome.o

# Check if the C++ file was compiled successfully
if [ $? -ne 0 ]; then
    echo "Error compiling the C++ file."
    exit 1
fi

# Echo message to indicate linking process
echo "Linking object files"

# Link the object files (getqword.o, manager.o, and wecome.o) into the final executable
g++ -o getqword.out getqword.o manager.o wecome.o

# Check if the linking was successful
if [ $? -ne 0 ]; then
    echo "Error linking the object files."
    exit 1
fi

# Echo message to indicate that the program is running
echo "Running program"

# Run the program
./getqword.out

