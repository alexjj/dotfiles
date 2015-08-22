# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
PKG_PATH=ftp://ftp5.usa.openbsd.org/pub/OpenBSD/`uname -r`/packages/`uname -m`/
PS1='\h\$ '
export PATH HOME TERM PKG_PATH PS1
