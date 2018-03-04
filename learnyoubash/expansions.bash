#!/usr/bin/env bash


# Learn Bash  
   
 ## SHELL EXPANSIONS (Exercise 5 of 11) 

 ## THE CHALLENGE  
   
: <<'END'
Create a file named expansions.bash.  
   
  Your script should multiply the first positional parameter with the sum of  
  the second and third parameter using arithmetic expansion. Save the result  
  to the variable, $RESULT e.g.  
   
  Then, using brace expansions, restore the following folder structure:  
   
     project-<RESULT>  
     ├── dest  
     │   ├── index.js  
     │   └── util.js  
     ├── src  
     │   ├── index.js  
     │   └── util.js  
     └── test  
         ├── index.js  
         └── util.js  
   
  Do not create any folders! Just output the result using echo. For example:  
   
     ./expansions.bash 1 5 6  
   
  The result must looks like this:  
   
     project-11/src/index.js project-11/src/util.js project-11/dest/index.js project-11/dest/util.js project-11/test/index.js project-11/test/util.js  
END

RESULT=$(( ($2+$3)*$1))
echo project-$RESULT/{src,dest,test}/{index,util}.js

:<<'END'
# Nice job!

 You just output the folder structure, but actually you can easily create
 this tree in the same way.
END
