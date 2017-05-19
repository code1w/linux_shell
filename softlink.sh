#!bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

srcdir=/data/work/code/srvcode-dev
for file in $srcdir/*
do
	if test -f $file
	then
		bname=$(basename $file)
		ln -s $srcdir/$bname $DIR/$bname
	fi

	if test -d $file
	then
		bname=$(basename $file)
		ln -s $srcdir/$bname $DIR/$bname
	fi
done
