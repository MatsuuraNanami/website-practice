---- drop ----
DROP TABLE IF EXISTS `blog`;

---- create ----
CREATE DATABASE blog;

CREATE TABLE post (
  no SERIAL,
  title TEXT,
  content TEXT,
  time TIMESTAMP
);

CREATE TABLE comment (
  no SERIAL,
  post_no INT,
  name TEXT,
  content TEXT,
  time TIMESTAMP
);

INSERT INTO post(no,title,content) VALUES(1,'記事１タイトル','記事１の内容です。');
INSERT INTO post(no,title,content) VALUES(2,'記事２タイトル','記事２の内容です。');
INSERT INTO comment(no,post_no,name,content) VALUES(1,1,'たろう','記事１へのコメントです。');
INSERT INTO comment(no,post_no,name,content) VALUES(2,1,'はなこ','記事１へのコメントです。');