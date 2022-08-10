#!/usr/bin/env bash

# switch case sample , with regex
mode=updatetest
case $mode in
    "update")
        mode="update"
    ;;
    *)
        mode="server"
    ;;
esac
echo $mode

# section 2
st=1
if [ "$st" == "1" ]; then
    echo -e "inside if section 2" 1>&2
    # exit 1;
fi


# array
compiled_file=()
compiled_file+=("test1.lua")
compiled_file+=("test2.lua")

echo $compiled_file


# array foreach
for filename in ${compiled_file[@]}; do
    echo origin:$filename '${filename:0:-4}'=${filename:0:-4}
done



st=0
if [ $st == "0" ] ; then
    echo "successful..."
fi

exit 0
