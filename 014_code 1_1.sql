SELECT 지역, 
       COUNT(*) AS 주문건수, 
       SUM(금액) AS 총매출액
FROM orders
JOIN customers ON orders.고객번호 = customers.고객번호
GROUP BY 지역
ORDER BY 총매출액 DESC;
