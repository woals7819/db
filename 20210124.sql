
/*===============================2021-01-24==================================*/




# 모든 데이터 베이스 조회
SHOW DATABASES;

# 만약 존재한다면 t1 데이터 베이스 삭제
DROP DATABASE IF EXISTS t1;
# t1 데이터 베이스 만들기
CREATE DATABASE t1;
# t1 데이터 베이스 선택
USE t1;
# article 테이블 만들기 (id, title, body)
CREATE TABLE aeticle
    title CHAR(100),
    contents TEXT
);
# id = 1, title = '제목1', body = '내용1' 데이터 하나 추가
INSERT INTO article
SET id = 1,
title = '제목1',
`body` = '내용1';

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
# 아래 부터는 수정과 삭제가 이루어진 다음 select * from article을 이용해 결과를 확인해주세요.
SELECT * FROM article;
# 모든 게시물의 제목을 aaa로, 내용을 bbb로 변경
UPDATE article
SET title = 'aaa',
`body` = 'bbb';
# 1번 게시물만 조회
SELECT * FROM article
WHERE id = 1;
# 1번 게시물의 제목을 제목1으로 변경
UPDATE article
SET title = '제목1'
WHERE id = 1;
# 2번 게시물만 조회
SELECT * FROM article
WHERE id = 2;
# 2번 게시물의 내용을 내용2으로 변경
UPDATE article
SET `body` = '내용2';
# 3번 게시물만 조회
SELECT * FROM article
WHERE id = 3;
# 3번 게시물의 제목을 제목3, 내용을 내용3으로 변경
UPDATE article
SET `body` = '제목3';
# 모든 게시물 데이터 삭제
DELETE FROM article;
# id = 1, title = '제목1', body = '내용1' 데이터 하나 추가
INSERT INTO article
SET id = 1,
title = '제목1',
`body` = '내용1';
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
# id가 1인 게시물 삭제
DELETE FROM article
WHERE id = 1;
# 제목이 제목2인 게시물 삭제
DELETE FROM article
WHERE title = 2;
# 내용이 내용3인 게시물 삭제
DELETE FROM article
WHERE `body` = 3;


SELECT * FROM article

INSERT INTO article
SET id = 1,
title = '제목1',
`body` = '내용1';

INSERT INTO article
SET id = 2,
title = '제목2',
`body` = '내용2';

INSERT INTO article
SET id = 3,
title = '제목3',
`body` = '내용3';

SELECT *FROM article;

DELETE FROM article
WHERE id = 2;

UPDATE article
SET title = '제목4'
WHERE id = 3;


SELECT * FROM article
WHERE title = '제목4' AND `body` = '내용3';


SHOW TABLES;
# article 테이블 만들기 (칼럼은 제목, 내용만)
CREATE TABLE article(
    title CHAR(100),
    `body` TEXT);
# 제목1, 내용1 데이터 추가
INSERT INTO article
SET title = '제목1',
`body` = '내용1';
# 제목1, 내용1 데이터 또 하나 추가
INSERT INTO article
SET title = '제목1',
`body` = '내용1';

# 데이터 조회(게시물 구분 안됨)
SELECT * FROM article;

# 테이블 구조 - DDL(CREATE, DROP, ALTER)
# 테이블 데이터 - DML(SELECT, UPDATE, DELETE, INSERT)구분
# 테이블 구조 수정 - 칼럼 추가, 칼럼 수정, 칼럼 삭제
ALTER TABLE article
ADD COLUMN id INT(5);

# 테이블 구조 확인
DESC article; 

# 데이터 조회(새로 생긴 id 칼럼의 값은 NULL)
SELECT * FROM article;

# 기존 데이터에 id값 추가
UPDATE article
SET id = 1;


# 데이터 조회(둘다 수정되어 버림..)
SELECT * FROM article;
# 기존 데이터 중 1개만 id를 2로 변경
UPDATE article
SET id = 2
LIMIT 1;

# 데이터 조회
SELECT * FROM article;

# 데이터 1개 추가
INSERT INTO article
SET id = 3,
title = '제목3',
`body` = '내용3';

# 2번 게시물, 데이터 삭제 => DELETE
DELETE FROM article
WHERE id = 2;
# 데이터 조회
SELECT * FROM article;
# 1번 게시물 제목을 제목2로 변경 => UPDATE
UPDATE article
SET title = '제목2'
WHERE id = 1;



# 기존에 t1 데이터베이스가 존재 한다면 삭제
DROP DATABASE IF EXISTS t1;

# 새 데이터베이스(`t1`) 생성
CREATE DATABASE t1;
# article 테이블 생성(칼럼은 id, title, body)
CREATE TABLE article(
    id INT(5),
    title CHAR(100),
    `body` TEXT
);
# id 없는 테스트 데이터 등록
INSERT INTO article
SET title = '제목1',
`body` = '내용1';
# 데이터 조회
SELECT * FROM article;

# id가 NULL인 데이터 생성이 가능하네?
# id 데이터는 꼭 필수 이기 때문에 NULL을 허용하지 않게 바꾼다.
# 기존의 NULL값 때문에 경고가 뜬다.
# 기존의 NULL값이 0으로 바뀐다.

#컬럼 추가 - add column
#칼럼 수정 - modify column
ALTER TABLE article MODIFY COLUMN id INT(5) NOT NULL;
DESC article;

# id 없는 테스트 데이터 등록
INSERT INTO article
SET title = '제목2',
`body` = '내용2';

SELECT * FROM article;



# 키 등록
# 생각해 보니 모든 행(row)의 id 값은 유니크 해야한다.
# alter를 이용해 id 칼럼의 옵션에 null 허용하지 않음과 유니크 옵션 붙이기.

ALTER TABLE article MODIFY id INT(5) NOT NULL UNIQUE; 

# id 중복 제거
UPDATE article
SET id = 1
LIMIT 1;

# 오류가 난다. 왜냐하면 기존의 데이터 중에서 중복되는 값이 있다.

INSERT INTO article
SET title = 'aa',
`body` = 'bb';

DESC article;
# 반드시 필요하며 중복되지 않는 식별용 데이터 -> not null + unique = primary key

# 테이블 생성시 주키 등록
# 자동 증가 제약 (AUTO_INCREMENT)
CREATE TABLE article(
    id INT(5) PRIMARY KEY AUTO_INCREMENT,
    title CHAR(100)NOT NULL,
    `body` TEXT NOT NULL
);

DESC article;

# id 없는 테스트 데이터 2개 등록
INSERT INTO article
SET title = 'aa',
`body` = 'bb';

INSERT INTO article
SET title = 'cc',
`body` = 'dd';

SELECT * FROM article;



# 기존에 t1 데이터베이스가 존재 한다면 삭제
DROP DATABASE IF EXISTS t1;
# 새 데이터베이스(`t1`) 생성
CREATE DATABASE t1;
# article 테이블 생성(칼럼은 id, title, body)
CREATE TABLE article(
    id INT(5),
    title CHAR(10),
    `body` TEXT
);
# id 없는 테스트 데이터 등록
INSERT INTO article
SET title = 'aaa',
`body` = 'bbb';

# 데이터 조회
SELECT * FROM article;


# id가 NULL인 데이터 생성이 가능하네?
# id 데이터는 꼭 필수 이기 때문에 NULL을 허용하지 않게 바꾼다.
# 기존의 NULL값 때문에 경고가 뜬다.
# 기존의 NULL값이 0으로 바뀐다.

ALTER TABLE article MODIFY id INT(5) NOT NULL;
DESC article;

# id 없는 테스트 데이터 등록
INSERT INTO article
SET title = 'vvv',
`body` = 'sss';

SELECT * FROM article;
# 키 등록
# 생각해 보니 모든 행(row)의 id 값은 유니크 해야한다.
# alter를 이용해 id 칼럼의 옵션에 null 허용하지 않음과 유니크 옵션 붙이기.


ALTER TABLE article MODIFY id INT(5) NOT NULL UNIQUE;



# id 중복 제거
# 오류가 난다. 왜냐하면 기존의 데이터 중에서 중복되는 값이 있다.
UPDATE article
SET id = 1
LIMIT 1;

# 테이블 생성시 주키 등록
CREATE TABLE article(
    id INT(5) PRIMARY KEY,
    title CHAR(10) NOT NULL,
    `body` TEXT NOT NULL
);

DESC article;
# id 없는 테스트 데이터 2개 등록
INSERT INTO article
SET title = 'aaa',
`body` = 'vv';

INSERT INTO article
SET title = 'vv',
`body` = 'ss';


SELECT * FROM article;
# 자동 증가 제약 (AUTO_INCREMENT)
ALTER TABLE article MODIFY id INT(5) AUTO_INCREMENT;

DESC article;




# 나머지 모든 컬럼에 not null 제약 걸기
#null이 들어가있을 경우에 null처리를 해줘야하므로 공백처리를 한다.

# id에 unsigned 제약 걸기
# UNSIGNED = 음수를 양수로 바꿔준다.

ALTER TABLE article MODIFY id INT(5) UNSIGNED;

DESC article;
# 작성자(writer) 칼럼을 title 칼럼 다음에 추가.
ALTER TABLE article ADD writer CHAR(50);
#테이블의 맨 뒤에 칼럼이 투가된다.

DESC article;
# 칼럼 삭제
ALTER TABLE article DROP writer;

ALTER TABLE article ADD writer CHAR(50) AFTER title;
# 작성자(writer) 칼럼의 이름을 nickname 으로 변경.
ALTER TABLE article CHANGE writer nickname CHAR(50);

DESC article;
# nickname 칼럼의 위치를 body 밑으로 보내주세요.
ALTER TABLE article MODIFY nickname CHAR(50) AFTER `body`;
# hit 조회수 칼럼 추가.

ALTER TABLE article ADD hit INT(10) NOT NULL;

DESC article;












