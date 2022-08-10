#!/bin/bash


# section 2
st=1
if [ "$st" == "1" ]; then
    echo -e "inside if section 2" 1>&2
fi

st=0
if [ $st == "0" ] ; then
    echo "successful..."
fi

exit 0