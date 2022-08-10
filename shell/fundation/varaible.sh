#!/bin/bash
# [Pattern]: [Bash Variable]
# ===== declare =====

declare -x Var1="Var1" # similiar to export Var1="Var1"

declare -n Var2=Var1 # symbolic link varaible, not just value

declare -p Var3 # stderr if not existing

declare -i Var4=4 # varaible as integer
Var4=Var4+1
echo ${Var4}

declare -u Var5=Uppercase # uppercase and lowercase
declare -l Var6=LOWCASE
echo "Uppercase Var5: ${Var5}, Lowercase Var6: ${Var6}"
echo "Uppercase Var6: ${Var6^^}, Lowercase Var5: ${Var5,,}"

declare -r Var7="Var7"  # readonly
Var7="Var8"
echo ${Var7}

unset Var1 Var2 Var3 Var4 Var5 Var6 Var7

echo "$(tput setaf 3)Indexed Array$(tput init)"
declare -a indexed_array # index array
indexed_array[0]=0
indexed_array[3]=3
indexed_array["one"]=one    # Warning: All non-indexed key will be treat as same key
echo '${indexed_array[@]}:' ${indexed_array[@]}
echo '${#indexed_array[@]}:' ${#indexed_array[@]}
echo '${indexed_array["one"]}:' ${indexed_array["one"]}
echo '${indexed_array[two]}:' ${indexed_array[two]}
unset indexed_array



echo "$(tput setaf 3)Associative Array$(tput init)"
declare -A associative_array # associative array
associative_array[0]=0
associative_array[3]=3
associative_array[one]=one

echo '${associative_array[@]}:' ${associative_array[@]}
echo '${#associative_array[@]}:' ${#associative_array[@]}
echo '${associative_array[one]}:' ${associative_array[one]}
echo '${associative_array[two]}:' ${associative_array[two]}
unset associative_array
