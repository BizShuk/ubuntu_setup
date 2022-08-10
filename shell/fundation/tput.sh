
# [Pattern]: [Bash Color] foreground/background

# font foreground
for i in $(seq 0 7)
do
    echo '$(tput setaf '$i'):' "$(tput setaf $i) color foreground$(tput init)"

done

# font background
# Warning: tput init should put in end of line, side-effect in put next line
for i in $(seq 0 7)
do
    echo '$(tput setab '$i'):' "$(tput setab $i) color background$(tput init)"
done



function cy() {
    echo "$(tput setaf 3)"$@"$(tput init)"
}
x=10
y=$(cy ${x})
echo $y
unset x y
