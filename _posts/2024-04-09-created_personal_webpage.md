---
layout: post
title: 個人ページ作りました．
date: 2024-04-09 16:11:00-0400
description: 博士になったし，みんな持ってるし，個人ページ作ったほうがいいかなと思って作りました．意外と時間かかりました．
tags:
categories: ジブリッシュ
featured: false
---

### 個人ページ作らむと欲す．

欧米のイカした研究者はみんなかっこいいpersonal web pageを持っている印象があって，自分も欲しいなーと漠然と思っていましたが，なかなか作る時間が取れずにいました．
博士課程がこの4月から始まって，まだ時間がゆったり流れているので，時間があるうちに作ってしまおうと思い立ちました．あと，新入生が，「ラボを決める前にラボのメンバーの個人ページはあるものは全部読んだ」と言っていて，RLに興味がある人がラボに増えるかもしれないというプラクティカルな効用もあると気がつき，重い腰を上げました．

### できるだけ楽に作りたい．
いろいろ調べて，とりあえず[GitHub Pages](https://docs.github.com/ja/pages/getting-started-with-github-pages/about-github-pages)を使うのが簡単そうと言う結論に達しました．WebサイトをGithub上のレポジトリから直接ホストできます．自分でサーバーとか用意しなくていいのがいいですね．さて，僕はwebプログラミングの知識が皆無なので，テンプレートを探すことにしました．

- [academicpages](https://github.com/academicpages/academicpages.github.io?tab=readme-ov-file): 多分一番ポピュラーなやつです．クリックしてもらうと見たことある！となると思います．
- [al-folio](https://github.com/alshedivat/al-folio): これもかなりスター多いです．デザインが好みだったのでこれにしました．
- [minima](https://github.com/jekyll/minima): Jekyllでwebページを作る際のミニマルなテンプレートみたいです．

### デフォルトページを表示するまで．
テンプレートは[al-folio](https://github.com/alshedivat/al-folio)に決まったので，あとはこれをいじるだけかと思いきや，いろいろハマりました．
ここでは，僕みたいにwebプログラミング何もわからないけどとにかくパッと個人ページ欲しい人向けに，2024年4月現在うまくいく方法を書いておきます．

**ステップ1**: テンプレートページをデプロイする．

ここでは，https://<github user name>.github.ioを検索すると，テンプレートである，アインシュタインの個人ページが表示される状態になることを目指します．
1. [aI-folio](https://github.com/alshedivat/al-folio)の右上にある`Use this template`をクリックして，`<your user name>.github.io`と言う名前のレポジトリを作りましょう．この際, `Include all branches`にチェックをつけましょう．

2. `Setting -> Actions -> General -> Workflow permission`にいき，`Read and write permission`の権限をGithub Actionに与えてください．

3. `_config.yaml`の`url`を`https://<your user name>.github.io`に変更し，`baseurl`の値を消してください．(**baseurl**と言うkeyは消さないでください)

4. `Settings -> Pages -> Build and deployment`で，`branch`を`gh-pages`(github pagesでデプロイするためのbranch)に変更してください．

上記の方法は，エラーに出会って検索した[issue](https://github.com/alshedivat/al-folio/issues/1438#issuecomment-1951693154)で見つけました．

**ステップ2** カスタマイズ．

ステップ1 ができればあとはもう簡単です．[al-folioのREADME](https://github.com/alshedivat/al-folio?tab=readme-ov-file#al-folio)を参考に，適切なファイルに変更を加えていってください．マージが行われるたびに自動で変更後のwebpageをデプロイしてくれます．[GitHub Actionsでフォーマットチェッカーやリンクチャッカーが動いている](https://github.com/nissymori/nissymori.github.io?tab=readme-ov-file#code-quality-checks)ので，怒られたら指示に従って直しましょう．
