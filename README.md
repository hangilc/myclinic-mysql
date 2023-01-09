# MyClinic-MySQL

電子カルテプログラム MyClinic 用の MySQL データベースをセットアップするためのファイルを集めた repository です。

MySQL のバージョンは 5.7 を使用します。
以下を conf に追加して、sql-mode を設定します。

```
sql-mode="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"
```

## Docker

MySQL データベースの Docker Image を作成します。
docker run の際に以下の環境変数を設定できます。
```
MYSQL_ROOT_PASSWORD
MYSQL_USER
MYSQL_PASSWORD
```
