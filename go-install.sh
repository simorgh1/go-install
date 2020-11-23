#!/bin/bash

VERSION=`curl https://golang.org/VERSION?m=text`
ARCH=`uname -m`

wget https://golang.org/dl/$VERSION.linux-amd64$ARCH.tar.gz -o $VERSION.tar.gz

sudo tar -C /usr/local -xzf $VERSION.tar.gz

rm $VERSION.targgz

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

export GOPATH=$HOME/golib:$HOME/code
export PATH=$PATH:$GOPATH/bin

mkdir $HOME/golib $HOME/code
cd $HOME/code
./go-tools.sh

