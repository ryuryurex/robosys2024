#!/bin/bash
# SPDX-FileCopyrightText: 2024 Ryusei Noda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

### 正常な入力のテスト ###
out=$(echo 5 | ./passgenerater)
[ $? = 0 ] || ng "$LINENO"
[[ "$out" =~ ^[A-Za-z0-9]+$ ]] || ng "$LINENO"

out=$(echo 10 | ./passgenerater)
[ $? = 0 ] || ng "$LINENO"
[[ "$out" =~ ^[A-Za-z0-9]+$ ]] || ng "$LINENO"

### 異常な入力のテスト ###
out=$(echo -1 | ./passgenerater)
[ $? = 1 ] || ng "$LINENO"
[[ "$out" == "1以上の正数を入力してください" ]] || ng "$LINENO"

out=$(echo 0 | ./passgenerater)
[ $? = 1 ] || ng "$LINENO"
[[ "$out" == "1以上の正数を入力してください" ]] || ng "$LINENO"

out=$(echo あ | ./passgenerater)
[ $? = 1 ] || ng "$LINENO"
[[ "$out" == "無効な入力です" ]] || ng "$LINENO"

out=$(echo | ./passgenerater)
[ $? = 1 ] || ng "$LINENO"
[[ "$out" == "入力がありません" ]] || ng "$LINENO"

### テスト結果 ###
[ "$res" -eq 0 ] && echo OK
exit "$res"
