#!/bin/bash

# [Pattern]: [Bash function] function return
# [Variant]: [Bash function] use return
# Warning: Only work for number between 0 ~ 255
function f1 () {
    return 30
}
f1
echo "retrive by $?:" $?

# [Variant]: [Bash function] echo return
# Warning: might mess with stdout/log
function f2 () {
    echo "This line is inside f2 function returned by $()"
}

val=$(f2)
echo ${val}


# [Pattern]: [Bash function] function parameter
# [Variant]: [Bash function] global variable
# Warning: global variable
function F3 () {
    echo '$1:' $1
    echo '$@:' $@
    echo '${#@}:' ${#@}
    array=("$@")
    echo '("$@")' ${array[1]}

    local arg1=$1
    retval="input: $arg1 without Function"

}

getval1="Bash Function"
F3 $getval1
echo $retval




