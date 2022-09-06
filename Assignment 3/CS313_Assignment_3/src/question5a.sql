-- part a
SELECT DISTINCT supplier.sup_name
FROM part NATURAL JOIN supplier NATURAL JOIN shipment
WHERE part.color='Red';