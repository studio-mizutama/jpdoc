# jpdoc

定款、社内規則、契約書等の日本語文書を作成するためのLaTeXスタイルファイルです。  
[株式会社科学計算総合研究所](https://www.ricos.co.jp/)様の[定款](https://github.com/ricosjp/Articles)で使用されているスタイルファイルを、MITライセンスの下でスタジオみずたまが一部改変しました。

# Usage

`\usepackage`により`jpdoc`を読み込みます。  
使いたいLaTeXのソースコードと同じディレクトリに`jpdoc.sty`を置くか、後述する方法でインストールします。

```tex
\documentclass[10pt,a4paper]{jsarticle}
\usepackage{bm}
\usepackage{graphicx}
\usepackage[truedimen,left=25truemm,right=25truemm,top=25truemm,bottom=25truemm]{geometry}
\usepackage{jpdoc}
```

# Install

```sh
$ git clone git@github.com:studio-mizutama/jpdoc.git
$ cd jpdoc
$ sudo make install
```

`Makefile`は以下の内容です。`make`コマンドが使用できない環境では下記コマンドを手動で入力してみてください。

```Makefile
Version=$(shell ls -r /usr/local/texlive/ | grep 20 | head -n 1)

install:
	mkdir  -p /usr/local/texlive/${Version}/texmf-dist/tex/platex/jpdoc
	cp jpdoc.sty /usr/local/texlive/${Version}/texmf-dist/tex/platex/jpdoc/
	mktexlsr
```
