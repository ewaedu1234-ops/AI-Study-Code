SELECT 상품명, 
       COUNT(*) AS 판매량, 
       AVG(금액) AS 평균단가
FROM orders
GROUP BY 상품명
ORDER BY 판매량 DESC;