# Depcon

[![Build Status](https://travis-ci.org/t4traw/depcon.svg?branch=master)](https://travis-ci.org/t4traw/depcon)
[![Code Climate](https://codeclimate.com/github/t4traw/depcon/badges/gpa.svg)](https://codeclimate.com/github/t4traw/depcon)

よく使われる機種依存文字をよしなに変換してくれる`.depcon`(非破壊メソッド)と`.depcon!`(破壊メソッド)をStringクラスに追加します。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'depcon'
```

## Usage

```ruby
foo = "㈱サンプルから℡がありました。「さきほど送った1㌻の項目№③ですが、20㍉ではなく20㌢が正しい数値になります。修正お願いします。」"

p foo.depcon # "(株)サンプルからTELがありました。「さきほど送った1ページの項目No.(3)ですが、20ミリではなく20センチが正しい数値になります。修正お願いします。」"

foo.depcon!

p foo # "(株)サンプルからTELがありました。「さきほど送った1ページの項目No.(3)ですが、20ミリではなく20センチが正しい数値になります。修正お願いします。」"
```

## Example

```yml
№: No.
℡: TEL
㊤: (上)
㈱: (株)
㍻: 平成
㎜: mm
㎏: kg
㍉: ミリ
㌢: センチ
①: (1)
⑳: (20)
Ⅰ: I
Ⅶ: VII
Ⅹ: X
```

more [lib/dictionary.yml](https://github.com/t4traw/depcon/blob/master/lib/dictionary.yml)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/t4traw/depcon.
