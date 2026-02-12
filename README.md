WordPress 開発環境
===

## ◯ Getting started

* ```bash create.sh``` を実行

## ◯ Work command

* **起動:** ```npx @wordpress/env start```
  * WordPress + DB コンテナを起動
* **停止:** ```npx @wordpress/env stop```
  * コンテナは残る
* **削除:** ```npx @wordpress/env destroy```
  * コンテナ + DB + データ全部消える（完全削除）
* **状態:** ```docker ps```
  * 起動中のコンテナ一覧
  