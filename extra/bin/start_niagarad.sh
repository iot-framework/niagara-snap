#!/bin/sh
mkdir -p $SNAP_COMMON/etc
mkdir -p $SNAP_COMMON/modules
mkdir -p $SNAP_COMMON/Niagara4.7/tridium
mkdir -p $SNAP_COMMON/Niagara4.7/vykon
chown 5011:5011 -R $SNAP_COMMON/etc
chown 5011:5011 -R $SNAP_COMMON/modules
chown 5011:5011 -R $SNAP_COMMON/Niagara4.7
exec $SNAP/usr/bin/setpriv --reuid 5011 --regid 5011 --keep-groups -- $SNAP/bin/niagarad $@
