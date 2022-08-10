#!/bin/bash



function cy() {
    echo "$(tput setaf 3)"$@"$(tput init)"
}
y=10

x=$(cy ${y})
echo $x
