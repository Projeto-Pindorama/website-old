#!/bin/sh
[ "`whoami`" != 'root' ] && { echo 'Run it with root, idiot.'; exit 1; }
exec thttpd -d /usr/str0/www -l /var/log/thttpd.log &
