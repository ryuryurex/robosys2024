# robosys2024

[![test](https://github.com/ryuryurex/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/ryuryurex/robosys2024/actions/workflows/test.yml)

## 概要
- ロボットシステム学の授業で作成したリポジトリです。

## テスト済みの環境
* Ubuntu 20.04
* Python:3.7~3.11

## 使用準備
このコマンドでリポジトリを適当な場所にクローンしてください

```shell
$ git clone https://github.com/ryuryurex/robosys2024.git
$ cd robosys2024
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
生成したパスワード: eKtNR
```

```shell
$ echo echo 8 | ./passgenerater
生成したパスワード: JF9FzCck
```

```shell
$ echo 14 | ./passgenerater
生成したパスワード: JB5noR5QOpmdvu
```
## LICENSE
* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。

## Copyright
* © 2024 Ryusei Noda
