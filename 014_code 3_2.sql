SELECT 상품명, SUM(금액) AS 매출합계
FROM orders
GROUP BY 상품명
ORDER BY 매출합계 DESC;