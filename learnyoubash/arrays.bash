#!/usr/bin/env bash

# Learn Bash  
   
 ## ARRAYS (Exercise 4 of 11)

funArray=${@:2:2}
funArray=(I am ${funArray[*]} and $4)
echo ${funArray[*]}
