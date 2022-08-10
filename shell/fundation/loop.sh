#!/bin/bash

# [Pattern]: [Bash loop]
# [Variant]: [Bash loop] basic
for ((i=1; i<10; i++))
do
    echo "basic iteration: ${i}"
done

# [Variant]: [Bash loop] range
for i in {1..10}
do
    echo "range iteration : ${i}"
done

# [Variant]: [Bash loop] list
for i in 1 2 3 4 5 6 7 8 9 10
do
    echo "list iteration : ${i}"
done

# [Variant]: [Bash loop] seq gen
for i in $(seq 1 10)
do
    echo "seq gen iteration : ${i}"
done
