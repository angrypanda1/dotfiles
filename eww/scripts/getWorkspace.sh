workspace=$(wmctrl -d | grep -w '*' | cut -d ' ' -f1)
number=1
actualWorkspace=$(($workspace + $number))
echo $actualWorkspace
