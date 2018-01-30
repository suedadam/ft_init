#Add to /etc/crontab via echo "0 0 * * * $(pwd)/04.sh" >> /etc/crontab
file="sum"
sum=`md5sum /etc/crontab | awk '{ print $1 }'`
read -r line<$file
if [ "$line" != "$sum" ]; then
        echo "$sum" | mail -s "crontab has changed" root
fi
echo "$sum">sum


