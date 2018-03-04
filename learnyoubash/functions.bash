#!/usr/bin/env bash

 # Learn Bash  
   
 ## FUNCTIONS (Exercise 10 of 11)  

 :<<'END'
  ## THE CHALLENGE  
   
  Create a file named functions.bash.  
   
  The problem is almost the same as in the previous exercise. You receive  
  two positional parameters and should output all even numbers in the range  
  between them. To do this, create a function with any name that will print  
  these numbers using recursion. Also declare a function main that will  
  print the value of $FUNCNAME and call your function.  
   
  In other words, you should build a tree of even numbers. On the top of the  
  tree should be the name of the main function. Other elements must be even  
  numbers. Each new element of the tree should have indentation that is  
  equal to depth (one level is one space  ).  
   
  Example:  
   
     ./loops.bash 10 17  
   
  Output:  
   
     main  
      10  
       12  
        14  
         16  
   
  Use -n with echo to output something on the same line.  
END

print_even_tree () {

    [[ $1 -lt $2 ]] || return

    local ind_counter=$3
    if [[ $(($1 % 2)) -eq 0 ]]; then
        for (( i = 0; i < $ind_counter; i++ )); do
            echo -n " "
        done
        echo $1            
       ind_counter=$(($ind_counter + 1))
    fi

    print_even_tree $(($1+1)) $2 $ind_counter
}

main () {
    echo $FUNCNAME
    print_even_tree $1 $2 1
    
}

main $1 $2

:<<'END'
 Here's the official solution in case you want to compare notes:

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    greater_even() {
      # return if it's out of range
      [[ $1 -lt $2 ]] || return
    
      indent="$3"
      if [[ $(( $1 % 2 )) -eq 0 ]]; then
        i=0
        for (( i = 0; i < $indent; i++ )); do
          echo -n ' '
        done
        echo $1
    
        # update indent only if number is even
        indent=$(( indent + 1 ))
      fi
    
      greater_even $(( $1 + 1 )) $2 $indent
    }
    
    main() {
      echo $FUNCNAME
      greater_even $1 $2 1
    }
    
    main $1 $2

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    greater_even() {
      # return if it's out of range
      [[ $1 -lt $2 ]] || return
    
      indent="$3"
      if [[ $(( $1 % 2 )) -eq 0 ]]; then
        i=0
        for (( i = 0; i < $indent; i++ )); do
          echo -n ' '
        done
        echo $1
    
        # update indent only if number is even
        indent=$(( indent + 1 ))
      fi
    
      greater_even $(( $1 + 1 )) $2 $indent
    }
    
    main() {
      echo $FUNCNAME
      greater_even $1 $2 1
    }
    
    main $1 $2


# Fine!
END


