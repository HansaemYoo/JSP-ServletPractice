--���̺����
CREATE TABLE book(
    book_id VARCHAR(20) CONSTRAINT book_id_pk PRIMARY KEY,
    book_name VARCHAR(20),
    book_loc VARCHAR(10));

--���̺�˻�
SELECT * FROM tab;

--���̺����
DROP TABLE book;

--commit
commit;

--���̺���� - ��������
CREATE TABLE book(
    book_id VARCHAR(20) CONSTRAINT book_id_pk PRIMARY KEY,
    book_name VARCHAR(20),
    book_loc VARCHAR(10));

--������ ����
CREATE SEQUENCE book_seq;

--������ ����
DROP SEQUENCE book_seq;

--������ �߰�
INSERT into book(book_id, book_name, book_loc)
VALUES (book_seq.NEXTVAL, 'book2', '001-002');

--������ ����
UPDATE book SET book_loc = '001-001'
where book_name = 'book1';

--�����ͻ���
DELETE FROM book
where book_id = '2';

--������ �˻�
SELECT * FROM book; --book���̺��� ��� �� �˻�

--book���̺��� book_name�� book_loc �����͸� �˻�, book_name�� å�̸����� loc�� ��ġ�� ǥ��
SELECT book_name as å�̸�, book_loc as å��ġ FROM book; 

--book���̺��� book_id�� 3����ũ�鼭 5���� �۰ų� ���� ������ �˻�
SELECT * FROM book
where book_id > 3 and book_id<=5;

SELECT * FROM book
where book_id like 3; --book_id�� 3�̶� ���� ������ �˻�

SELECT * FROM book
where book_id like '%3'; --�������� 3�� ���Ե� ������ �˻�

SELECT * FROM book
where book_id like 'book%'; --book���� �����ϴ� ������

SELECT * FROM book
where book_id like '%ok%'; --�߰��� ok�� ���Ե� ������

--����
SELECT * FROM book ORDER BY book_id asc; --��������

SELECT * FROM book ORDER BY book_id desc; --��������