#!/bin/bash -x
echo ""
echo "Self Extracting Installer"
echo ""

export TMPDIR=`mktemp -d /tmp/selfextract.XXXXXX`

ARCHIVE=`awk '/^#__BEGIN_SELF_EXTRACT_ARCHIVE__#/ {print NR+1;exit 0;}' $0`

tail -n+$ARCHIVE $0 | tar xzv -C $TMPDIR

CDIR=`pwd`
cd $TMPDIR
./app/run_app.sh

cd $CDIR
rm -rf $TMPDIR

exit 0

#__BEGIN_SELF_EXTRACT_ARCHIVE__# Nothing, not even blank lines, below!
