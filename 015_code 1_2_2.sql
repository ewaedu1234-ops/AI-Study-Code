SELECT 
    c.이름, 
    c.회원등급,
    COUNT(o.주문번호) AS 구매횟수,
    MAX(o.주문일) AS 최근구매일
FROM customers c
LEFT JOIN orders o ON c.고객번호 = o.고객번호
WHERE c.회원등급 = 'VIP'
  AND o.주문일 >= date('2026-05-08', '-6 months')
GROUP BY c.고객번호, c.이름, c.회원등급
HAVING COUNT(o.주문번호) >= 3
   AND MAX(o.주문일) <= date('2026-05-08', '-90 days');
