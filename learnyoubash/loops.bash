 #!/usr/bin/env bash
 
 # Learn Bash  
   
 ## LOOPS (Exercise 9 of 11)  

 :<<'END'
  ## THE CHALLENGE  
   
  Create a file named loops.bash.  
   
  The first two positional parameters which will be passed into your script  
  are the limits. You should write all even numbers in the range between the  
  first and second positional parameters.  
   
  Example:  
   
     ./loops.bash 10 17  
   
  Output:  
   
     10  
     12  
     14  
     16  
   
  Use for, while or until loops to solve this problem. 

END


 for (( i = $1; i < $2; i++ )); do  
       if [[ $(($i % 2)) == 0 ]]; then 
        echo $i      
       else 
        continue;
       fi
 done 

 :<<'END'

 Here's the official solution in case you want to compare notes:

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    i=$1
    while [[ $i -lt $2 ]]; do
      [ ! $(( $i % 2 )) -eq 0 ] || echo $i
      i=$(( $i + 1 ))
    done

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    i=$1
    while [[ $i -lt $2 ]]; do
      [ ! $(( $i % 2 )) -eq 0 ] || echo $i
      i=$(( $i + 1 ))
    done


# Done!
 In the description of the problem we haven't mentioned the select loop.

 The select loop helps us to organize a user menu. It has almost the same
 syntax as a for loop:

    select answer in elem1 elem2 ... elemN
    do
      # statements
    done

 The select prints all elem1..elemN on the screen with their sequence
 numbers, after that it prompts the user. Usually it looks like $? (PS3
 variable). The answer will save in answer. If answer is the number between
 1..N, then statements will execute and select will go to the next
 iteration — that's because we should use break statement.

 A working example might look like this:

    #!/bin/bash
    
    PS3="Choose the package manager: "
    select ITEM in bower npm gem pip
    do
      echo -n "Enter the package name: " && read PACKAGE
      case $ITEM in
        bower) bower install $PACKAGE ;;
        npm)   npm   install $PACKAGE ;;
        gem)   gem   install $PACKAGE ;;
        pip)   pip   install $PACKAGE ;;
      esac
      break # avoid infinite loop
    done

 This example, asks the user what package manager to use. Then, it will ask
 what package we want to install and finally proceed to install it.

 If we run this, we will get:

    $ ./my_script
    1) bower
    2) npm
    3) gem
    4) pip
    Choose the package manager: 2
    Enter the package name: bash-handbook
    <installing bash-handbook>

 In the next exercise you will take a look at what functions are in bash.

 You have 2 challenges left.

END

