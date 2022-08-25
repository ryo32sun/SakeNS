# SakeNS(Sake Networking Service)

## サイト概要
### サイトテーマ
日本酒、焼酎、ウイスキー、クラフトビールetc... 好きなお酒がどこで飲めるのかを発信、発見できるサイトです

### テーマを選んだ理由
  備忘録として、お酒のレビューやどこのお店で買ったのかを登録できるアプリがあればと考えていました。
そして投稿機能をつけ情報をまとめることでお酒の情報共有サイトとなるようにと思いこのテーマを設定しました。
好きなお酒をもっと広めたいのんべえ、コロナ禍で続く宅飲み需要で新しいお酒が買える場所を探している人、
また接待のお店探しで先方の好きな銘柄を指定され困っている営業マン、そんな人の手助けになればと考えています。

 <!--気になるお酒があるけれど、どこで買えるのか分からず飲めないことが何度もありました。そんな時にどのようなお酒がどこで買えるのかを-->
 <!--まとめたサイトがあればと思いました。その中で、接待の際にお酒の銘柄でお店を探すことがあると知り、購入だけでは無く飲めるお店も-->
 <!--登録できるようにと考え設定しました。-->
 <!--また、お酒のレビュー機能を持たせることで備忘録としての使い方もできるようにし、-->
<!--現在も日本酒のレビューサイトはあるが、そのほかのお酒も含めたものや、どこで購入できるかまでまとめたサービスがなかったので。-->


### ターゲットユーザ
* お酒好きな人
* 接待のお店を選ぶ担当者

### 主な利用シーン
* お酒好きな人の備忘録として
* 新しいお酒を探している人の参考資料に
* 気になるお酒がどこで買えるのか知りたいとき
* 接待でおいしいお酒が飲めるお店を探しているとき

## 設計書
* ER図
![ER図](asetts/images/ER.png "ER")

* UIFlow(customer)
![UIFlow](images/Flows_ca.png "Flow_ca")

* UIFlow(admin)
![UIFlow](images/Flows_ad.png "Flow_ad")

* ワイヤーフレーム(customer)
> [ワイヤーフレーム](https://github.com/ryo32sun/SakeNS/files/9423752/CA.drawio.1.pdf)

* ワイヤーフレーム(admin)
> [ワイヤーフレーム](https://github.com/ryo32sun/SakeNS/files/9423762/AD.drawio.pdf)

* テーブル定義書
> [テーブル定義書](https://docs.google.com/spreadsheets/d/1Ri3KQecOxeJipN9agatkrED78Eu3yMe1tHB3H52VtpA/edit#gid=1373217982)

* アプリケーション詳細設計
> [アプリケーション詳細設計](https://docs.google.com/spreadsheets/d/1lTVAbTKgItdUzL3Z8qWrXSCoIboia9HlxMrNd7_YPjA/edit#gid=549108681)

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9
- API：Google Maps Platform

## 使用素材
<...>
- [Font Awesome5.15.4](https://fontawesome.com/)
- [icon-pit](https://icon-pit.com/policy)