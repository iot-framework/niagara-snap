#!/bin/sh
mkdir -p $HOME/etc/niagara $HOME/Niagara4.7/vykon
chown 5011:5011 -R $HOME/etc/niagara $HOME/Niagara4.7/vykon
exec $SNAP/usr/bin/setpriv --reuid 5011 --regid 5011 --keep-groups -- $SNAP/bin/niagarad $@
