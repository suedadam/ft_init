cat /etc/passwd | awk '{ print $1 }' | awk -F':' '{ print $1,$3,$6}'
