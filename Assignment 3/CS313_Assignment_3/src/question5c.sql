-- part c
SELECT supplier.sup_name
FROM part NATURAL JOIN supplier NATURAL JOIN shipment
GROUP BY supplier.sup_name
HAVING count(distinct part.part_name)=(
      SELECT count(distinct part.part_name)
      FROM part
      );