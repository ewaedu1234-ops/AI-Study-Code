SELECT 상품명, AVG(금액) AS 평균판매금액
FROM orders
GROUP BY 상품명
ORDER BY 평균판매금액 DESC;