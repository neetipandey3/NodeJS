#!/usr/bin/env bash

# Learn Bash  
   
## STREAMS PIPES AND LISTS (Exercise 6 of 11)  

$1 || echo "First parameter is false."; $2 && pwd; ($3 && ls) || echo "Third parameter is false."

:<<'END'
 Here's the official solution in case you want to compare notes:

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    $1 || echo "First parameter is false."
    
    $2 && pwd
    
    $3 && ls || echo "Third parameter is false."

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    $1 || echo "First parameter is false."
    
    $2 && pwd
    
    $3 && ls || echo "Third parameter is false."


# Great!

 Streams and pipes are useful to create logs and to transfer data from one
 command to another. Lists of commands give you the opportunity to change
 the result of the execution of your script.
 END