SELECT Count(*) FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN customers ON orders.customer_id  = customers.id 
INNER JOIN products ON order_details.product_id = products.id 
INNER JOIN categories ON products.category_id = categories.id 
INNER JOIN employees ON orders.employee_id = employees.employee_id 
INNER JOIN shippers ON orders.shipper_id = shippers.id  
INNER JOIN suppliers ON products.supplier_id = suppliers.id; 

SELECT Count(*) FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.id
LEFT JOIN customers ON orders.customer_id  = customers.id 
LEFT JOIN products ON order_details.product_id = products.id 
LEFT JOIN categories ON products.category_id = categories.id 
LEFT JOIN employees ON orders.employee_id = employees.employee_id 
LEFT JOIN shippers ON orders.shipper_id = shippers.id  
LEFT JOIN suppliers ON products.supplier_id = suppliers.id; 

-- Кількість однакова, тому що у всіх пов’язаних таблицях є 
-- відповідні записи — невідповідностей немає, тому LEFT JOIN 
-- і INNER JOIN дають однаковий результат.

SELECT
	categories.name AS categories_name,
	Count(*) AS total_rows, 
	AVG(order_details.quantity) AS avg_products_quantity
FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.id
LEFT JOIN customers ON orders.customer_id  = customers.id 
LEFT JOIN products ON order_details.product_id = products.id 
LEFT JOIN categories ON products.category_id = categories.id 
LEFT JOIN employees ON orders.employee_id = employees.employee_id 
LEFT JOIN shippers ON orders.shipper_id = shippers.id  
LEFT JOIN suppliers ON products.supplier_id = suppliers.id
WHERE 
	employees.employee_id > 3 
	AND employees.employee_id <= 10
GROUP BY categories.name
HAVING avg_products_quantity > 21
ORDER BY total_rows DESC
LIMIT 4 OFFSET 1;

