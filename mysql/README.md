# mysqlコマンド

## ログイン

```sh
mysql -u root -p -h 127.0.0.1
mysql -u root -p -h 127.0.0.1 データベース名
```

```sh
mysql -u root -p -h 127.0.0.1 -D test -e 'SQL'
# 例
mysql -u root -p -h 127.0.0.1 -D test -e 'SHOW DATABASES;'
```

```sql
SHOW DATABASES;
SHOW DATABASES LIKE '検索したいデータベース名';
SHOW DATABASES LIKE '%my';
CREATE DATABASE nkoguchi;
CREATE DATABASE IF NOT EXISTS nkoguchi;
CREATE DATABASE cooking CHARACTER SET utf8;

"ハイフンがついたデータベースの作成"
CREATE DATABASE `test-db`;

DROP DATABASE nkoguchi;
DROP DATABASE IF EXISTS nkoguchi;

USE nkoguchi;

SELECT DATABASE();

CREATE TABLE test_table (id INT, name VARCHAR(100));
INSERT INTO test_table(id, name) VALUES(1, 'testnkoguchi');
SELECT * FROM test_table WHERE name = 'testnkoguchi';
SELECT id,name FROM test_table WHERE name = 'testnkoguchi';

UPDATE test_table SET name = 'update_nkoguchi' WHERE  id = 1;

DELETE FROM test_table WHERE id = 1;
```
