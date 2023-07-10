@echo off

if not exist "out" mkdir out


echo Compiling. . . 
g++ -o "out/out.exe" main.cpp -I. -L -lglfw3 -lopengl32 -v
echo Finished compilation, running now. . . 

"out/out.exe"

echo Run finished