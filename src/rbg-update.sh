#!/bin/sh

SRCDIR=/opt/rbg/src

if [ ! -d  $SRCDIR ] ; then
    echo "NO $SRCDIR ... bye"
    exit 3
fi

cd $SRCDIR

if [ ! -d raspberrygate_p2.0 ] ; then
    git clone https://github.com/RaspberryGuardian/raspberrygate_p2.0.git
else
    cd raspberrygate_p2.0
    git pull
    LANG=C date > /opt/rbg/src/install.log
    if [ -f install.sh ] ; then
	/bin/sh install.sh 2>&1 >> /opt/rbg/src/install.log
    else
	echo 'No install.sh ... bye' >> /opt/rbg/src/install.log
    fi
fi

exit 0
