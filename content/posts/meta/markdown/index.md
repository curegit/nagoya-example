---
title: Markdown のレンダリング例
date: 2024-07-03
categories:
  - テスト
tags:
  - Markdown
  - HTML
  - Hugo
images:
  - catch.png
---

Hugo で使用できる基本的な Markdown 記法の、このテーマでの表示例を示します。

Hugo (Goldmark) は多くの Markdown 拡張に対応しているので、それらも合わせて紹介します。

サムネイル画像は `images` フロントマターのテストです。

<!--more-->

{{< toc >}}

# 見出し1

最上位の見出し要素はタイトルで使われるので、このレベルの見出しを本文で使うことは本来ないでしょう。

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

## 段落

吾輩は猫である。
名前はまだ無い。

どこで生れたかとんと見当がつかぬ。
何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。
吾輩はここで始めて人間というものを見た。
しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。
この書生というのは時々我々を捕えて煮て食うという話である。
しかしその当時は何という考もなかったから別段恐しいとも思わなかった。
ただ彼の掌に載せられてスーと持ち上げられた時何だかフワフワした感じがあったばかりである。

掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始であろう。
この時妙なものだと思った感じが今でも残っている。
第一毛をもって装飾されべきはずの顔がつるつるしてまるで薬缶だ。
その後猫にもだいぶ逢ったがこんな片輪には一度も出会わした事がない。
のみならず顔の真中があまりに突起している。
そうしてその穴の中から時々ぷうぷうと煙を吹く。
どうも咽せぽくて実に弱った。
これが人間の飲む煙草というものである事はようやくこの頃知った。

## テキスト装飾

*Emphasized by single asterisks.*

**二重アスタリスク強調です。**

~~このテキストは誤りでした。~~

**このテキストは _this_ がとりわけ重要です。**

***三重アスタリスク強調です。***

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

* xxx
  > yyy
* zzz

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
脚注[^footnote]を使うことができます[^footnote2]。

リンクテキストをこのように挿入できます: [リンクのテキスト](https://curegit.jp/)。

Autolinks という仕様も存在します。

<https://curegit.jp/>

## 画像

これは、段落の文章です。
画像を挿入します。

![Lisp Alien](lisp.png "Lisp")

サムネイルの画像です。

![Example image](/nagoya-example/catch.png)

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

`linenos` オプションで行番号を表示する例です。

```lisp {linenos=true}
(defun fizzbuzz (n)
  (loop for i from 1 to n
   do (cond ((equal (mod i 15) 0) (format t "~%fizzbuzz"))
            ((equal (mod i 5) 0) (format t "~%buzz"))
            ((equal (mod i 3) 0) (format t "~%fizz"))
            (t (print i)))))

(defun fizzbuzz-main ()
  (fizzbuzz 100))
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

## 引用

> 引用文です。

ブロック引用はネストすることができます。

>>> foo bar baz

ブロック引用中で別の要素を使うことができます。

>> aaa
>>>
>>> 1. **xxx** ppp
>>> 2. www `qqq` yyy
>>>
>> bbb
>>> ~~DANGER!!!~~
>>>
>>> ```c
>>> #include <unistd.h>
>>>
>>> int main() {
>>>   while(1)
>>>     fork();
>>>   return 0;
>>> }
>>> ```
>>>
>> ccc

## その他の記法

### 水平線

水平線を表す場合は、3つ以上のアスタリスク（\*）やハイフン（-）を使います。

---

水平線を表す場合は、3つ以上のアスタリスク（\*）やハイフン（-）を使います。

### 説明リスト

用語1
: 用語の説明

用語2
: 用語の説明

用語3
: 用語の説明

これは、段落の文章です。

### チェックリスト

- [x] 水温
  - [x] 油温
  - [x] 油圧
- [ ] A/F
- [ ] ブースト

### Extras Goldmark Extensions

```md
H~2~O
: ==水==は透明で、++無味無臭++、ほぼ無色の化学物質であり、地球の==水==圏とすべての既知の生物の体液の主成分です。
すべての生態にとって重要であり、カロリーや有機栄養素を提供しないにもかかわらず、その存在は重要です。
地球上の==水==の総量は約 1.4&times;10^18^&nbsp;m^3^ です。
```

H~2~O
: ==水==は透明で、++無味無臭++、ほぼ無色の化学物質であり、地球の==水==圏とすべての既知の生物の体液の主成分です。
すべての生態にとって重要であり、カロリーや有機栄養素を提供しないにもかかわらず、その存在は重要です。
地球上の==水==の総量は約 1.4&times;10^18^&nbsp;m^3^ です。

## 生の HTML の例

### 振り仮名

```html
しかもあとで聞くとそれは書生という人間中で一番<ruby>獰悪<rp>(</rp><rt>どうあく</rt><rp>)</rp></ruby>な種族であったそうだ。
```

しかもあとで聞くとそれは書生という人間中で一番<ruby>獰悪<rp>(</rp><rt>どうあく</rt><rp>)</rp></ruby>な種族であったそうだ。

### 回り込み

```html
<figure style="float: left; width: 30%; margin: 10px 20px;">
  <img src="towers.avif" style="width: 100%;">
  <figcaption>JRセントラルタワーズ</figcaption>
</figure>
...
<div style="clear: both;"></div>
```

<figure style="float: left; width: 25%; margin: 10px 20px;">
  <img src="towers.avif" style="width: 100%;">
  <figcaption>JRセントラルタワーズ</figcaption>
</figure>

**JRセントラルタワーズ**は、名古屋駅に直結する高層ビルで、名古屋のランドマークの一つです。
1999 年に完成し、地上 245 メートルの高さを誇るこのタワーは、オフィス、ホテル、商業施設が一体となった複合施設です。
名古屋駅の上に位置するため、交通の便が非常に良く、多くのビジネスマンや観光客に利用されています。

タワーズ内には、JRセントラルタワーズオフィス、**名古屋マリオットアソシアホテル**、そして多くのショッピングフロアやレストランがあります。
オフィスフロアは最新の設備を備え、快適なビジネス環境を提供しています。
ホテルは高級感あふれる内装とサービスで、国内外からの宿泊客に高い評価を受けています。

多彩なショップやレストランが揃っており、ショッピングや食事を楽しむことができます。
特に、地元の名物料理を提供するレストランや、最新のファッションアイテムを取り扱う店舗が人気です。
さらに、展望台からは名古屋市内の美しい景色を一望でき、観光スポットとしても魅力的です。

<div style="clear: both;"></div>

### `<kbd>` 要素

```html
Please press <kbd><kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd></kbd> to rerender the page.
```

Please press <kbd><kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd></kbd> to rerender the page.

[^footnote]: 脚注の内容です

[^footnote2]: 脚注の内容です
