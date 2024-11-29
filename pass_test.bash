#!/bin/bash

ng () {
        echo ${1}行目が違うよ
        res=1
}
res=0

### 正常な入力のテスト ###

### 異常な入力のテスト ###

### テスト結果 ###
[ "$res" -eq 0 ] && echo OK
exit "$res"
