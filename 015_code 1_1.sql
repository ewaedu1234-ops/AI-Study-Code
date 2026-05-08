SELECT p.카테고리, COUNT(*) AS 구매건수
FROM orders o
JOIN customers c ON o.고객번호 = c.고객번호   -- 첫 번째 연결: 누가 주문했나?
JOIN products p ON o.상품번호 = p.상품번호    -- 두 번째 연결: 무엇을 주문했나?
WHERE c.지역 = '서울'
  AND c.회원등급 = 'VIP'
  AND o.주문일 >= date('now', '-30 days')    -- 최근 1개월 필터
GROUP BY p.카테고리
ORDER BY 구매건수 DESC;