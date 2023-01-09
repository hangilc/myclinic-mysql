# MyClinic-MySQL

電子カルテプログラム MyClinic 用の MySQL データベースをセットアップするためのファイルを集めた repository です。

MySQL のバージョンは 5.7 です。
以下を conf に加えて、sql-mode として、既定の sql-mode から、NO_ZERO_DATE を除外したものを使用しています。（'0000-00-00' を日付の入力として有効にするため。）

```
sql-mode="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"
```

## Docker: myclinic-mysql-demo

デモとして MyClinic を実行するための、MySQL データベースの Docker Image を作成する。
MyClinic 用のテーブルと、デモ用のデータが保存されています。

docker run の際に以下の環境変数を設定できます。
```
MYSQL_ROOT_PASSWORD
MYSQL_USER
MYSQL_PASSWORD
```
