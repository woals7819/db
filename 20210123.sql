# 전체 데이터베이스 리스팅
SHOW DATABASES;

# `mysql` 데이터 베이스 선택
USE mysql;

# 테이블 리스팅
SHOW TABLES;

# `db` 테이블의 구조 확인
DESC db;

# 기존에 `board` 데이터베이스가 존재 한다면 삭제
DROP DATABASE  IF EXISTS board;

# 새 데이터베이스(`board`) 생성
CREATE DATABASE board; 

# 데이터베이스 추가 되었는지 확인
SHOW DATABASES board;

# `board` 데이터 베이스 선택
USE board;

# 테이블 확인
SHOW TABLES;

# 게시물 테이블(`article`)을 만듭니다.
# 칼럼 칼럼명 타입
CREATE TABLE article(
    title CHAR(100),
    `body` TEXT
);

# 잘 추가되었는지 확인
SHOW TABLES;

# 데이터 하나 추가
INSERT INTO article
SET title = '안녕',
`body` = '반갑습니다.';

INSERT INTO article
SET title = '잘가',
`body` = '안녕히 가세요.';

# 모든 데이터 조회
SELECT * FROM article;

# 제목 조회
SELECT title FROM article;

# 내용 조회
SELECT `body` FROM article;

# 제목, 내용 칼럼 데이터 조회
SELECT title, `body` FROM article;

# 내용, 제목 칼럼 데이터 조회
SELECT `body`, title FROM article;


# 모든 데이터 베이스 조회
SHOW DATABASES;

# 만약 존재한다면 t1 데이터 베이스 삭제
DROP DATABASE  IF EXISTS  t1;
# t1 데이터 베이스 만들기
CREATE DATABASE t1;
# t1 데이터 베이스 선택
USE t1
# article 테이블 만들기 (id, title, body)
CREATE TABLE article(
    id INT,
    title CHAR(100),
    `body` TEXT
);
# id = 2, title = '제목2', body = '내용2' 데이터 하나 추가
INSERT INTO article
SET id = 2,
title = '제목2',
`body` = '내용2';

# id = 3, title = '제목3', body = '내용3' 데이터 하나 추가
INSERT INTO article
SET id = 3,
title = '제목3',
`body` = '내용3';

# id = 1, title = '제목1', body = '내용1' 데이터 하나 추가
INSERT INTO article
SET id = 1,
title = '제목1',
`body` = '내용1';

# 모든 데이터 조회
SELECT * FROM article;

# 모든 데이터 id로 오름차순 정렬 조회
SELECT * FROM article
ORDER BY id ASC;
# 모든 데이터 id로 내림차순 정렬 조회
SELECT * FROM article
ORDER BY id DESC;
# id = 3, title = '제목1', body = '내용1' 데이터 하나 추가
INSERT INTO article
SET id = 3,
title = '제목1',
`body` = '내용1';
# id = 3, title = '제목2', body = '내용2' 데이터 하나 추가
INSERT INTO article
SET id = 3,
title = '제목2',
`body` = '내용2';
# 모든 데이터 id, title 순으로 오름차순 정렬 조회
SELECT *FROM article
ORDER BY id,title ASC;
# 모든 데이터 id, 오름차순 title 내림차순 정렬 조회
SELECT *FROM article
ORDER BY id ASC,
title DESC;







