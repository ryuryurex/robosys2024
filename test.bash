#!/bin/bash

ng () {
	echo ${1}行目が違うよ
	res=1
}
res=0

### nomal input ###
out=$(seq 5 | ./plus)
[ "$out" = 15 ] || ng "$LINENO"

### strange input ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
