# to be used as crontab entry
# updates DNS root hints directly from Internic
#
# Update BIND DNS root hints monthly on the first of month
0 4 1 * *         /usr/sbin/rndc flush && /usr/bin/wget ftp://ftp.internic.net/domain/db.cache -O /etc/bind/db.root && /usr/sbin/rndc reload && /etc/init.d/bind9 restart
