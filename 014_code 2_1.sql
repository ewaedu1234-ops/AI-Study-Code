SELECT 
    COUNT(*) AS 총주문건수,
    SUM(금액) AS 총매출액,
    AVG(금액) AS 평균주문금액,
    MAX(금액) AS 최고판매가,
    MIN(금액) AS 최저판매가
FROM orders;