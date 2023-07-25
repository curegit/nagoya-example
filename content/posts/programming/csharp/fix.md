---
title: "C# で無名再帰"
date: 2023-05-08T16:41:33+09:00
categories:
  - コンテンツ
  - 技術
tags:
  - "C#"
  - ".NET"
  - 数学
---

このコードは、C# 言語で再帰的な関数を無名で作成するためのライブラリです。
このライブラリを利用することで、再帰的な関数を使う際に必要な再帰呼び出しを簡単に行うことができます。

このライブラリは、`Fix` メソッドによって構成されています。
`Fix` メソッドは、`Func` 型の引数を受け取り、再帰呼び出しを行うための関数を返します。

<!--more-->

```cs
public static class Lambda
{
    public static Func<TResult> Fix<TResult>(Func<Func<TResult>, Func<TResult>> fix)
    {
        if (fix != null)
        {
            return () => fix(Fix(fix))();
        }
        else
        {
            throw new ArgumentNullException(nameof(fix));
        }
    }

    public static Func<T, TResult> Fix<T, TResult>(Func<Func<T, TResult>, Func<T, TResult>> fix)
    {
        if (fix != null)
        {
            return a => fix(Fix(fix))(a);
        }
        else
        {
            throw new ArgumentNullException(nameof(fix));
        }
    }

    public static Func<T1, T2, TResult> Fix<T1, T2, TResult>(Func<Func<T1, T2, TResult>, Func<T1, T2, TResult>> fix)
    {
        if (fix != null)
        {
            return (a, b) => fix(Fix(fix))(a, b);
        }
        else
        {
            throw new ArgumentNullException(nameof(fix));
        }
    }

    public static Func<T1, T2, T3, TResult> Fix<T1, T2, T3, TResult>(Func<Func<T1, T2, T3, TResult>, Func<T1, T2, T3, TResult>> fix)
    {
        if (fix != null)
        {
            return (a, b, c) => fix(Fix(fix))(a, b, c);
        }
        else
        {
            throw new ArgumentNullException(nameof(fix));
        }
    }
}
```

`Fix` メソッドは、引数の数に応じて、4 つのオーバーロードが用意されています。
それぞれ、引数が 0 つの場合、1 つの場合、2 つの場合、3 つの場合に対応します。
これにより、引数の数に応じて、再帰的な関数を定義することができます。

例えば、次のような再帰的な関数を定義することができます。

```cs
Func<int, int> fib = Lambda.Fix<int, int>(f =>
    n => n < 2 ? 1 : f(n - 1) + f(n - 2));
```

このように、`Lambda` クラスを利用することで、再帰的な関数を簡単に定義することができます。
