-- 1. 서울 고객과 주문 내역을 합치고
-- 2. 지역이 '서울'인 데이터만 골라내기
SELECT 
    c.이름, 
    c.지역, 
    o.상품명, 
    o.금액
FROM orders AS o
JOIN customers AS c ON o.고객번호 = c.고객번호
WHERE c.지역 = '서울';