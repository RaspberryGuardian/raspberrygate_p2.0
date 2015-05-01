rm -fr /opt/rbg
insserv --remove raspg

if [ -f /etc/init.d/raspg ] ; then
    /etc/init.d/raspg
fi


