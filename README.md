# robosys2024

[![test](https://github.com/ryuryurex/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/ryuryurex/robosys2024/actions/workflows/test.yml)
[![License](https://img.shields.io/badge/License-BSD--3--Clause-blue.svg)](https://github.com/ryuryurex/robosys2024/blob/main/LICENSE)

## 概要
- ロボットシステム学の授業で作成したリポジトリです。

## テスト済みの環境
### ローカル
* Ubuntu 20.04.6 LTS
* Python 3.8.10
### GitHub Actions
* Ubuntu 20.04
* Python: 3.7~3.11
## 使用準備

### このコマンドでリポジトリを適当な場所にクローンしてください。
```shell
$ git clone https://github.com/ryuryurex/robosys2024.git
```

### robosys2024に移動してください。
```shell
$ cd robosys2024
```

### plusとpassgeneraterにそれぞれ権限を付与してください。
```shell
$ chmod +x plus
```
```shell
$ chmod +x passgenerater
```

## plus
標準入力から数値を読み込み、その合計を計算して出力にします。

### 使用例
```shell
$ seq 10 | ./plus
55
```
```shell
$ seq 5 | ./plus
15
```

## passgenerater
数値を入力することによってランダムにパスワードを生成します。

### 使用例
```shell
$ echo 5 | ./passgenerater
WB31I
```
```shell
$ echo 8 | ./passgenerater
wxeSvyTN
```
```shell
$ echo 16 | ./passgenerater
exsiJU4s6i7SM1PL
```

## LICENSE
* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。

## Copyright
* © 2024 Ryusei Noda
