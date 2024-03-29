---
title: Markdown の例
date: 2021-05-06
categories:
  - テスト
tags:
  - Markdown
  - HTML
  - Hugo
images:
  - ad.png
---

Hugo で使用できる Markdown の例を示します。

サムネイル画像は `images` フロントマターのテストです。

<!--more-->

{{< toc >}}

# 見出し1

最上位の見出し要素はタイトルで使われるので、このレベルの見出しを本文で使うことはないです。

## 見出し2

本文はレベル2の見出しから始めましょう。

## 見出し2

### 見出し3

これは、段落の文章です。
**太字**や *italic* なども使えます。

#### 見出し4

##### 見出し5

###### 見出し6

小さい見出しを使うことはあまりないかもしれません。

🐈‍⬛🐈‍⬛🐈‍⬛

## リスト

通常よく使うリストです。

- リスト1
- リスト2
- リスト3

番号付きリストです。

1. 番号付きリスト1
2. 番号付きリスト2
3. 番号付きリスト3

ネストします。

- foo
  - bar
    - baz

異なる要素をリストの中に入れます。

* a
  > b
* c

### Menu

Preview a longer alphabetical list.

- Egg and bacon
- Egg, sausage, and bacon
- Egg and Spam
- Egg, bacon, and Spam
- Egg, bacon, sausage, and Spam
- Spam, bacon, sausage, and Spam
- Spam, egg, Spam, Spam, bacon, and Spam
- Spam, Spam, Spam, egg, and Spam
- Spam, Spam, Spam, Spam, Spam, Spam, baked beans, Spam, Spam, Spam, and Spam
- Lobster Thermidor aux crevettes with a Mornay sauce, garnished with truffle pâté, brandy, and a fried egg on top, and Spam

## リンク

これは、段落の文章です。
脚注[^footnote]を使うことができます。

リンクテキストをこのように挿入できます: [リンクのテキスト](https://curegit.jp/)。

Autolinks という仕様も存在します。

<https://curegit.jp/>

これは、段落の文章です。
画像を挿入します。

![Lisp Alien](lisp.png "Lisp")

サムネイルの画像です。

![Example image](/nagoya-example/ad.png)

## コードブロック

`インラインコード` は `バッククォート` で囲みます。

```
複数行の
コードを
書く場合は
バッククォート3つで
囲みます。
```

インデントコードブロックです。

    a simple
      indented code block

言語を指定したコードブロックです。

```py
def shifted(list, shift=0):
    n = len(list)
    for i in range(shift % n, n):
        yield list[i]
    for i in range(0, shift % n):
        yield list[i]
```

## テーブル

以下は架空の吉野家のメニュー表です。

| メニュー名           |   値段 | カロリー |
| :------------------- | -----: | -------: |
| 牛丼                 |  500円 |  550kcal |
| 牛皿                 |  550円 |  600kcal |
| 豚丼                 |  480円 |  500kcal |
| カツ丼               |  580円 |  650kcal |
| 牛とろ玉丼           |  650円 |  700kcal |
| 牛五目玉丼           |  680円 |  750kcal |
| 牛焼肉丼             |  750円 |  800kcal |
| 牛カルビ丼           |  800円 |  850kcal |
| 牛すき焼き丼         |  900円 |  950kcal |
| 牛ユッケ丼           |  950円 | 1000kcal |
| 牛肉ざんまい丼       | 1200円 | 1300kcal |
| 牛めしコロッケ定食   |  800円 |  900kcal |
| 牛めしハンバーグ定食 |  900円 |  950kcal |
| 牛めしカツ定食       |  950円 | 1000kcal |
| 牛めし焼肉定食       | 1000円 | 1050kcal |
| 牛めしすき焼き定食   | 1200円 | 1250kcal |
| 牛めしユッケ定食     | 1300円 | 1350kcal |
| 牛めし肉ざんまい定食 | 1500円 | 1550kcal |

## その他

### 引用

> 引用文です。

ブロック引用はネストすることができます。

>>> foo
>>> bar
>>> baz

ブロック引用中で別の要素を使うことができます。

>> aaa
>>>
>>> 1. xxx
>>> 2. yyy
>>>
>> bbb

### 水平線

水平線を表す場合は、3つ以上のアスタリスク（*）やハイフン（-）を使います。

---

水平線を表す場合は、3つ以上のアスタリスク（*）やハイフン（-）を使います。

### 説明リスト

用語1
: 用語の説明

用語2
: 用語の説明

用語3
: 用語の説明

これは、段落の文章です。

### 生の HTML

Please press <kbd><kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd></kbd> to rerender the page.

[^footnote]: 脚注の内容です
