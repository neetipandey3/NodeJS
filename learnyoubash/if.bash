#!/usr/bin/env bash

 # Learn Bash  
   
 ## IF CONDITIONAL STATEMENT (Exercise 7 of 11) 
 
## THE CHALLENGE 
 :<<'END'
  Create a file named if.bash.  
   
  Using if statements and primaries, output Good morning! if the first  
  positional parameter is less than 12. Output Good afternoon! if it is  
  equal to/greater than 12 but less than 18. Otherwise, output Good evening!  
  if it is equal to/greater than 18. Take care about cases when the  
  positional argument is less than 0 and greater than 24 (print Error! in  
  these cases).  
   
  For example:  
   
     ./if.bash -5  
     ./if.bash 12  
     ./if.bash 21  
   
  Output:  
   
     Error!  
     Good afternoon!  
     Good evening!  
   
END


if [[ $1 -lt 12 ]] && [[ $1 -ge 0 ]]; then
    echo "Good morning!"
elif [[ $1 -gt 12 ]] || [[ $1 -eq 12 ]] && [[ $1 -lt 18 ]]; then
    echo "Good afternoon!"
elif [[ $1 -gt 18 ]] && [[ $1 -lt 24 ]]; then
    echo "Good evening!"
else
    echo "Error!"
fi


:<<'END'
Here's the official solution in case you want to compare notes:

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    if [[ $1 -ge 0 && $1 -lt 12 ]]; then
      echo "Good morning!"
    elif [[ $1 -ge 12 && $1 -lt 18 ]]; then
      echo "Good afternoon!"
    elif [[ $1 -ge 18 && $1 -lt 24 ]]; then
      echo "Good evening!"
    else
      echo "Error!"
    fi

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    if [[ $1 -ge 0 && $1 -lt 12 ]]; then
      echo "Good morning!"
    elif [[ $1 -ge 12 && $1 -lt 18 ]]; then
      echo "Good afternoon!"
    elif [[ $1 -ge 18 && $1 -lt 24 ]]; then
      echo "Good evening!"
    else
      echo "Error!"
    fi


# Neat!

 You have made a simple script that greets us depending on the current
 time.
 END



