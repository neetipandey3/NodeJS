#!/usr/bin/env bash

 # Learn Bash  
   
 ## CASE CONDITIONAL STATEMENT (Exercise 8 of 11)  

 :<<'END'
 ## THE CHALLENGE  
   
  Create a file named case.bash.  
   
  In this exercise you will create a small image extensions checker. Using a  
  case statement, check if the first positional parameter is a jpeg (or  
  jpg), png, or gif extension. Output It is jpeg., It is png., or It is gif.  
  accordingly. Take care about cases when the positional argument contains  
  any other extension (print [EXT] is not an image! in these cases).  
   
  For example:  
   
     ./case.bash png  
     ./case.bash js  
     ./case.bash jpg  
   
  Output:  
   
     It is png.  
     js is not an image!  
     It is jpeg.  
END

   case "$1"  in 
       (jpeg|jpg)  
        echo 'It is jpeg.'  
         ;;  
       (png)  
         echo 'It is png.'  
         ;;  
       (gif)  
         echo "It is gif."
       ;;  
       (*)  
         echo "$1 is not an image!"  
       ;;  
     esac  

:<<'END'
     Here's the official solution in case you want to compare notes:

─────────────────────────────────────────────────────────────────────────────

    #!/usr/bin/env bash
    
    case "$1" in
      ("jpg"|"jpeg")
        echo "It is jpeg."
      ;;
      "png")
        echo "It is png."
      ;;
      "gif")
        echo "It is gif."
      ;;
      *)
        echo "$1 is not an image!"
      ;;
    esac


# Cool!

 As you have seen, using case is much more convenient when you are
 confronted with a couple of different cases.


END