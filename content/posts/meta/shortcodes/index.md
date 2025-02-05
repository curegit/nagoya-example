---
title: ショートコードの例
date: 2023-12-01
categories:
  - テスト
tags:
  - Markdown
  - HTML
  - Hugo
---

このテーマおよび Hugo 組み込みで使用できるショートコードの一例を紹介します。

ショートコードの使い方は Markdown ソースおよびテーマ本体のドキュメントを見てください。

<!--more-->

## ショートコード版目次

{{< toc >}}

この目次もショートコードです。
任意位置に挿入できます。

## Figure（Hugo 組み込み）

キャプション付きの画像を挿入できます。

{{< figure src="fig.png" caption="邪神ちゃんはお菓子を作ります" class="bordered" >}}

キャプション付きの画像を挿入できます。

## 詳細折りたたみ要素

{{% fold "折りたたみ" %}}
SPAM Menu from Monty Python

1. Egg and Spam
2. Egg, Bacon and Spam
3. Egg, Bacon, Sausage and Spam
4. Spam, Bacon, Sausage and Spam
5. Spam, Egg, Spam, Spam, Bacon and Spam
6. Spam, Spam, Spam, Egg and Spam
7. Spam, Spam, Spam, Spam, Spam, Spam, Baked Beans, Spam, Spam, Spam and Spam
8. Lobster Thermidor aux crevettes with a Mornay sauce, garnished with truffle pâté, brandy and a fried egg on top, and Spam
{{% /fold %}}

## リンクカード

{{< card image="cover.jpg" title="GitHub - curegit/precure-stylegan-ada: Yet another StyleGAN 2.0 implementation using Chainer with Adaptive Discriminator Augmentationto to synthesize specific Precure (Cure Beauty) images" desc="Yet another StyleGAN 2.0 implementation using Chainer with Adaptive Discriminator Augmentationto to synthesize specific Precure (Cure Beauty) images - GitHub" href="https://github.com/curegit/precure-stylegan-ada" >}}

サイト内部用リンクカードは別名のショートコードに分かれており、相対パスで画像の参照までできます。

{{< cardi ref="./markdown" >}}
