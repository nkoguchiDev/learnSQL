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
CREATE DATABASE mydatabase;
CREATE DATABASE IF NOT EXISTS mydatabase;
CREATE DATABASE cooking CHARACTER SET utf8;

"ハイフンがついたデータベースの作成"
CREATE DATABASE `test-db`;

DROP DATABASE mydatabase;
DROP DATABASE IF EXISTS mydatabase;

USE mydatabase;

SELECT DATABASE();

CREATE TABLE mytable (id INT, name VARCHAR(100));

INSERT INTO mytable(id, name) VALUES (1, 'testnkoguchi');
INSERT INTO mytable(id, name) VALUES (0, 'testnkoguchi'), (1, 'testnkoguchi'), (2, 'testnkoguchi');
INSERT INTO mytable VALUES (0, 'testnkoguchi'), (1, 'testnkoguchi'), (2, 'testnkoguchi');

INSERT INTO mytable SET id=13, name="hgujhndoiajw";


"mytable2 -> mytable"
INSERT INTO mytable (id, name) SELECT * from mytable2;

SELECT * FROM mytable;
SELECT id FROM mytable;

SELECT * FROM mytable\G

SELECT * FROM mytable ORDER BY id;
SELECT * FROM mytable ORDER BY BINARY name;
SELECT * FROM mytable ORDER BY id DESC;
SELECT * FROM mytable ORDER BY id DESC, name;
SELECT * FROM mytable ORDER BY FIELD (id, 1, 0, 2);
SELECT * FROM mytable ORDER BY id > 1 DESC;
SELECT * FROM mytable ORDER BY id LIMIT 1;

SELECT * FROM mytable LIMIT 2 OFFSET 1;

SELECT name FROM mytable GROUP BY name;
SELECT name, COUNT(*) FROM mytable GROUP BY name;
SELECT name, COUNT(id), MAX(id), MIN(id), SUM(id), AVG(id) FROM mytable GROUP BY name;

SELECT * FROM mytable WHERE name = 'testnkoguchi';
SELECT * FROM mytable WHERE id=0 AND name='nkoguchi';
SELECT * FROM mytable WHERE id=0 OR id=1;
SELECT * FROM mytable WHERE (id=0 OR id=1) AND name="nkoguchi";

SELECT * FROM mytable WHERE id>0;
SELECT * FROM mytable WHERE id>=1;

SELECT * FROM mytable WHERE name IS NULL;
SELECT * FROM mytable WHERE name IS NOT NULL;

SELECT * FROM mytable WHERE id IN (0, 1);
SELECT * FROM mytable WHERE id NOT IN (0, 1);

SELECT * FROM mytable WHERE name LIKE "%ki";
SELECT * FROM mytable WHERE name NOT LIKE "%ki";

SELECT * FROM mytable WHERE name LIKE "_aoki";
SELECT * FROM mytable WHERE name NOT LIKE "%_aoki";

SELECT * FROM mytable WHERE ratnameio LIKE '_\%';
SELECT * FROM mytable WHERE name LIKE '_|%' ESCAPE '|';

SELECT * FROM mytable WHERE name LIKE BINARY 'NAOKI';

SELECT * FROM mytable WHERE id BETWEEN 2 AND 14;
SELECT * FROM mytable WHERE id NOT BETWEEN 2 AND 14;

INSERT INTO mytable SET id=567;
INSERT INTO mytable SET id=87943724, name=NULL;

SELECT * FROM mytable WHERE name IS NULL;

SELECT * FROM mytable WHERE id IN (SELECT id FROM mytable2);

SELECT id,name FROM mytable WHERE name = 'testnkoguchi';

UPDATE mytable SET name = 'update_nkoguchi' WHERE  id = 1;

DELETE FROM mytable WHERE id = 1;

SHOW TABLES;
SHOW TABLES FROM test;
SHOW TABLES LIKE 'my%';

DESCRIBE mytable;
DESC mytable;

SHOW COLUMNS FROM mytable;
SHOW FIELDS FROM mytable;

DROP TABLE mytable;
```
