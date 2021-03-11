--테이블생성
CREATE TABLE book(
    book_id VARCHAR(20) CONSTRAINT book_id_pk PRIMARY KEY,
    book_name VARCHAR(20),
    book_loc VARCHAR(10));

--테이블검색
SELECT * FROM tab;

--테이블삭제
DROP TABLE book;

--commit
commit;

--테이블생성 - 제약조건
CREATE TABLE book(
    book_id VARCHAR(20) CONSTRAINT book_id_pk PRIMARY KEY,
    book_name VARCHAR(20),
    book_loc VARCHAR(10));

--시퀀스 생성
CREATE SEQUENCE book_seq;

--시퀀스 삭제
DROP SEQUENCE book_seq;

--데이터 추가
INSERT into book(book_id, book_name, book_loc)
VALUES (book_seq.NEXTVAL, 'book2', '001-002');

--데이터 수정
UPDATE book SET book_loc = '001-001'
where book_name = 'book1';

--데이터삭제
DELETE FROM book
where book_id = '2';

--데이터 검색
SELECT * FROM book; --book테이블의 모든 값 검색

--book테이블에서 book_name과 book_loc 데이터만 검색, book_name은 책이름으로 loc는 위치로 표시
SELECT book_name as 책이름, book_loc as 책위치 FROM book; 

--book테이블에서 book_id가 3보다크면서 5보다 작거나 같은 데이터 검색
SELECT * FROM book
where book_id > 3 and book_id<=5;

SELECT * FROM book
where book_id like 3; --book_id가 3이랑 같은 데이터 검색

SELECT * FROM book
where book_id like '%3'; --마지막에 3이 포함된 데이터 검색

SELECT * FROM book
where book_id like 'book%'; --book으로 시작하는 데이터

SELECT * FROM book
where book_id like '%ok%'; --중간에 ok가 포함된 데이터

--정렬
SELECT * FROM book ORDER BY book_id asc; --오름차순

SELECT * FROM book ORDER BY book_id desc; --내림차순