-- part b
SELECT supplier.sup_name,SUM(shipment.price*shipment.quantity) as payment
FROM shipment NATURAL JOIN supplier
GROUP BY sup_name;