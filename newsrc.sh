#! /bin/bash

clear
ls -ltrh archive/src_*
echo "enter file number: "
read -r fileno

git add --all
git commit -m 'before creating new source file'

mv src/ archive/src_"$fileno"
cp CMakeLists.txt archive/src_"$fileno"/
cp cmake_defaulte.txt CMakeLists.txt

mkdir src
mkdir src/app
mkdir src/header

now="$(date +"%T")"

printf '%s\n' "#include <iostream>
#include \"../header/main.hpp\"


int main() {



    std::cout << \"\n #($now): The End ...\" << std::endl;
    return EXIT_SUCCESS;
}" >> src/app/main.cpp

printf '%s\n' "#ifndef HEADER_MAIN_CPP
#define HEADER_MAIN_CPP

#define NL '\n'


#endif /* HEADER_MAIN_CPP */" >> src/header/main.hpp

git add --all
git commit -m 'new source file'

