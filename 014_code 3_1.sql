SELECT c.지역, COUNT(*) AS 주문건수
FROM orders o
JOIN customers c ON o.고객번호 = c.고객번호
GROUP BY c.지역
ORDER BY 주문건수 DESC;