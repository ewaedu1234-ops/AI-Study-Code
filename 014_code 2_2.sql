-- 서울 지역만 집계하기
SELECT SUM(o.금액) AS 서울총매출
FROM orders o
JOIN customers c ON o.고객번호 = c.고객번호
WHERE c.지역 = '서울';