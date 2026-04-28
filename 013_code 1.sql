-- 주문 정보와 고객 정보를 하나로 합쳐서 보여줘!
SELECT orders.주문번호, customers.이름, orders.상품명, orders.금액, customers.지역
FROM orders
JOIN customers ON orders.고객번호 = customers.고객번호;