#!/bin/bash

ng () {
        echo ${1}行目が違うよ
        res=1
}
res=0

### 正常な入力のテスト ###
out=$(echo 5 | ./passgenerater)
[ $? -eq 0 ] || ng "$LINENO"
[[ "$out" =~ ^生成したパスワード:\ .+$ ]] || ng "$LINENO"

out=$(echo 10 | ./passgenerater)
[ $? -eq 0 ] || ng "$LINENO"
[[ "$out" =~ ^生成したパスワード:\ .+$ ]] || ng "$LINENO"
### 異常な入力のテスト ###
out=$(echo -1 | ./passgenerater)
[ $? -eq 1 ] || ng "$LINENO"
[[ "$out" == "1以上の正数を入力してください" ]] || ng "$LINENO"

out=$(echo 0 | ./passgenerater)
[ $? -eq 1 ] || ng "$LINENO"
[[ "$out" == "1以上の正数を入力してください" ]] || ng "$LINENO"

out=$(echo あ | ./passgenerater)
[ $? -eq 1 ] || ng "$LINENO"
[[ "$out" == "無効な入力です" ]] || ng "$LINENO"

out=$(echo | ./passgenerater)
[ $? -eq 1 ] || ng "$LINENO"
[[ "$out" == "入力がありません" ]] || ng "$LINENO"

### テスト結果 ###
[ "$res" -eq 0 ] && echo OK
exit "$res"
