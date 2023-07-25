---
title: "C# で Unit 型を実装する"
date: 2022-04-20T16:31:59+09:00
categories:
  - コンテンツ
  - 技術
tags:
  - "C#"
  - ".NET"
---

今回は、C# で記述されたコード「Unit 構造体」について解説します。

Unit 構造体は、単一値（シングルトン）であることを表現するために使用されます。
つまり、ただ存在するだけで何の価値もない値であり、値自体を持っていないことを表現するために用いられます。

<!--more-->

{{< toc >}}

## Unit 構造体の実装

Unit 構造体は C# で以下のように実装できます。

```cs
using System;
using System.Diagnostics.CodeAnalysis;

[Serializable]
public struct Unit : IEquatable<Unit>, IComparable, IComparable<Unit>
{
    public override bool Equals([NotNullWhen(true)] object? obj)
    {
        return obj is Unit;
    }

    public bool Equals(Unit other)
    {
        return true;
    }

    int IComparable.CompareTo(object? other)
    {
        if (other is null)
        {
            return 1;
        }
        else if (other is not Unit)
        {
            throw new ArgumentException(null, nameof(other));
        }
        else
        {
            return 0;
        }
    }

    public int CompareTo(Unit other)
    {
        return 0;
    }

    public override int GetHashCode()
    {
        return 0;
    }

    public override string ToString()
    {
        return "()";
    }

    public static bool operator ==(Unit left, Unit right)
    {
        return true;
    }

    public static bool operator !=(Unit left, Unit right)
    {
        return false;
    }
}
```

`[Serializable]` を使用して、`Serializable` 属性を付与しています。
これは、この構造体をシリアル化できるように設定するために使われます。

Unit 構造体自体は、`IEquatable<T>` インターフェース、IComparable インターフェース、および `IComparable<T>` インターフェースを実装しています。
それぞれのインターフェースが実装するメソッドについて説明します。

### `IEquatable<T>` インターフェースを実装するために利用する `Equals()` メソッド

`Equals()` メソッドは、指定されたオブジェクトが、Unit 構造体のインスタンスであるかどうかを確認するために使用されます。
もし、指定されたオブジェクトが Unit 構造体のインスタンスである場合は、`true` を返します。

### `IComparable` インターフェースを実装するために利用する `CompareTo()` メソッド

`CompareTo()` メソッドは、この構造体のオブジェクトと、別のオブジェクトを順序比較します。
指定されたオブジェクトが Unit 構造体のインスタンスである場合は `0`（等値）を返し、そうでない場合は `ArgumentException` をスローします。

### `IComparable<T>` インターフェースを実装するために利用する `CompareTo()` メソッド

`CompareTo()` メソッドは、指定されたオブジェクト（ここでは Unit 構造体）と、この構造体のオブジェクトを比較します。
Unit 構造体は単一値（シングルトン）であるため、常に `0` を返します。

### その他

また、`Equals()` メソッドと `CompareTo()` メソッドで、null チェックを行っているのもポイントです。
指定されたオブジェクトが `null` である場合は、`CompareTo()` メソッドは `1`、`Equals()` メソッドは `false` を返します。

最後に、`ToString()` メソッド、`GetHashCode()` メソッド、および比較演算子をオーバーロードしていることも確認してください。

以上が、C# 言語で記述されたコード「Unit 構造体」についての解説です。
