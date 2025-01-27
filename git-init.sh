#!/bin/bash

# grep -rli 'cpp_001' * | xargs -i@ sed -i 's/cpp_001/new_cpp_project/g' @
git init 
git config user.name "hinata" 
git config user.email "hinatachikao1971@gmail.com" 
git add --all 
git commit -m 'first commit'
