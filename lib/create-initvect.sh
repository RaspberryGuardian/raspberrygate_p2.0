#!/bin/sh
if [ -f /opt/rbg/etc/initvec ] ; then
    # already setup
    exit 0
fi

if [ ! -f /opt/rbg/lib/add-module.sh ] ; then
    # Raspberry Gate is not installed.
    echo 'Raspberry Gate is not installed...bye'
    exit 1
fi

/bin/sh /opt/rbg/lib/add-module.sh

dd if=/dev/hwrng of=/opt/rbg/etc/initvec bs=1K count=8

echo 'Raspberry Gate: /opt/rbg/etc/initvec was created.'

exit 0