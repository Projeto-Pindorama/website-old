#!/bin/sh
[ "`whoami`" != 'root' ] && { echo 'Run it with root, idiot.'; exit 1; }
exec /bin/thttpd -dd /usr/storage0/www -nor -t /usr/storage0/www/thttpd/throttle.conf -l /var/log/thttpd.log &
