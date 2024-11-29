#!/bin/bash

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

### 正常な入力のテスト ###
out=$(echo 5 | ./passgenerater)
[ $? = 0 ] || ng "$LINENO"

out=$(echo 10 | ./passgenerater)
[ $? = 0 ] || ng "$LINENO"

### 異常な入力のテスト ###
out=$(echo -1 | ./passgenerater)
[ $? = 1 ] || ng "$LINENO"

out=$(echo 0 | ./passgenerater)
[ $? = 1 ] || ng "$LINENO"

out=$(echo あ | ./passgenerater)
[ $? = 1 ] || ng "$LINENO"

out=$(echo | ./passgenerater)
[ $? = 1 ] || ng "$LINENO"

### テスト結果 ###
[ "$res" -eq 0 ] && echo OK
exit "$res"

