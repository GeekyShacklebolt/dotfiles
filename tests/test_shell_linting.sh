#!/bin/bash
echo -e "\e[93mChecking Linting Errors...\033[0m"
if ! find . -path ./forked -prune -o -type f -name "*.sh" -print0 | xargs -0 -L 1 -n 1 shellcheck;
then
    echo -e "\e[91m\nLinting Failed! Errors are shown above!\033[0m";
else
    echo -e "\e[92m\nLinting Passed Successfuly!\033[0m"
fi;
