--#Для этого: выведи список логинов курьеров с количеством их заказов
--#в статусе «В доставке» (поле inDelivery = true).

SELECT c.login,
COUNT(o.id)
FROM "Couriers" AS c
LEFT OUTER JOIN "Orders" AS o ON c.id = o."courierId"
WHERE o."inDelivery" = true
GROUP BY c.login;

--#Для этого: выведи все трекеры заказов и их статусы.
--#Статусы определяются по следующему правилу:
--#Если поле finished == true, то вывести статус 2.
--#Если поле canсelled == true, то вывести статус -1.
--#Если поле inDelivery == true, то вывести статус 1.
--#Для остальных случаев вывести 0.

 SELECT track,
        CASE
            WHEN finished = true THEN 2
            WHEN canсelled = true THEN -1
            WHEN "inDelivery" = true THEN 1
        ELSE 0
 END
 FROM "Orders";