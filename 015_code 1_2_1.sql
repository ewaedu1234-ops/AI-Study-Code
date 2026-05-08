-- [1] 기존 테이블이 있다면 삭제 (초기화)
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

-- [2] 고객정보 테이블 생성
CREATE TABLE customers (
    고객번호 INTEGER PRIMARY KEY,
    이름 TEXT,
    지역 TEXT,
    회원등급 TEXT,
    가입일 DATE
);

-- [3] 주문정보 테이블 생성
CREATE TABLE orders (
    주문번호 INTEGER PRIMARY KEY,
    고객번호 INTEGER,
    상품명 TEXT,
    금액 INTEGER,
    주문일 DATE,
    FOREIGN KEY (고객번호) REFERENCES customers(고객번호)
);

-- [4] 테스트 데이터 삽입
-- (오늘 날짜를 2026-05-08로 가정)

INSERT INTO customers VALUES (1, '김철수', '서울', 'VIP', '2023-01-10'); -- 타겟 (VIP, 3회 이상, 최근구매 90일 전)
INSERT INTO customers VALUES (2, '이영희', '부산', 'GOLD', '2023-02-15'); -- 제외 (등급 미달)
INSERT INTO customers VALUES (3, '박지민', '대구', 'VIP', '2023-03-20'); -- 제외 (구매 횟수 부족)
INSERT INTO customers VALUES (4, '최다은', '인천', 'VIP', '2024-01-05'); -- 제외 (최근 90일 내 구매 기록 있음)

-- 1번 고객(김철수): 최근 6개월 내 3회 구매, 마지막 구매일은 약 4개월 전
INSERT INTO orders VALUES (101, 1, '노트북', 1200000, '2025-12-01');
INSERT INTO orders VALUES (102, 1, '마우스', 30000, '2025-12-15');
INSERT INTO orders VALUES (103, 1, '키보드', 150000, '2026-01-05'); 

-- 2번 고객(이영희): 구매는 많지만 GOLD 등급
INSERT INTO orders VALUES (104, 2, '가방', 50000, '2026-04-01');

-- 3번 고객(박지민): VIP지만 구매가 1회뿐
INSERT INTO orders VALUES (105, 3, '모니터', 300000, '2025-11-20');

-- 4번 고객(최다은): VIP고 3회 구매했지만, 최근(30일 전)에도 구매함
INSERT INTO orders VALUES (106, 4, '이어폰', 200000, '2026-02-01');
INSERT INTO orders VALUES (107, 4, '케이스', 20000, '2026-03-10');
INSERT INTO orders VALUES (108, 4, '충전기', 30000, '2026-04-10');
