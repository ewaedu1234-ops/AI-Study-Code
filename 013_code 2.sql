SELECT c.이름, c.지역, o.상품명, o.금액
FROM orders o
JOIN customers c ON o.고객번호 = c.고객번호
WHERE c.지역 = '서울' AND o.금액 >= 100000;