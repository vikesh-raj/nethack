#!/bin/sh
cd $(dirname $0)
export NETHACKOPTIONS=@`pwd`/nethackrc
exec games/nethack
