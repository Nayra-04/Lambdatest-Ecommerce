-- =============================================
-- Northwind Dummy Data
-- =============================================

-- orders_tax_status
INSERT INTO orders_tax_status (id, tax_status_name) VALUES
(1, 'Taxable'),
(2, 'Non-taxable');

-- orders_status
INSERT INTO orders_status (id, status_name) VALUES
(0, 'New'),
(1, 'Invoiced'),
(2, 'Shipped'),
(3, 'Closed');

-- order_details_status
INSERT INTO order_details_status (id, status_name) VALUES
(0, 'None'),
(1, 'Allocated'),
(2, 'Invoiced'),
(3, 'Shipped');

-- purchase_order_status
INSERT INTO purchase_order_status (id, status) VALUES
(0, 'New'),
(1, 'Submitted'),
(2, 'Approved'),
(3, 'Closed');

-- inventory_transaction_types
INSERT INTO inventory_transaction_types (id, type_name) VALUES
(1, 'Purchased'),
(2, 'Sold'),
(3, 'Restock');

-- privileges
INSERT INTO privileges (privilege_name) VALUES
('Purchase Approvals'),
('Sales Reports'),
('Inventory Management'),
('User Administration');

-- employees
INSERT INTO employees (company, last_name, first_name, email_address, job_title, business_phone, home_phone, mobile_phone, address, city, state_province, zip_postal_code, country_region) VALUES
('Northwind Traders', 'Freehafer', 'Nancy',   'nancy@northwind.com',   'Sales Representative',   '(123)555-0100', '(123)555-0101', '(123)555-0102', '507 - 20th Ave. E. Apt. 2A', 'Seattle',  'WA', '98122', 'USA'),
('Northwind Traders', 'Cencini',  'Andrew',  'andrew@northwind.com',  'Vice President, Sales',  '(123)555-0200', '(123)555-0201', '(123)555-0202', '908 W. Capital Way',          'Tacoma',   'WA', '98401', 'USA'),
('Northwind Traders', 'Kotas',    'Jan',     'jan@northwind.com',     'Sales Representative',   '(123)555-0300', '(123)555-0301', '(123)555-0302', '722 Moss Bay Blvd.',          'Kirkland', 'WA', '98033', 'USA'),
('Northwind Traders', 'Sergienko','Mariya',  'mariya@northwind.com',  'Sales Representative',   '(123)555-0400', '(123)555-0401', '(123)555-0402', '4110 Old Redmond Rd.',        'Redmond',  'WA', '98052', 'USA'),
('Northwind Traders', 'Thorpe',   'Steven',  'steven@northwind.com',  'Sales Manager',          '(123)555-0500', '(123)555-0501', '(123)555-0502', '14 Garrett Hill',             'London',   NULL, 'SW1 8JR','UK');

-- employee_privileges
INSERT INTO employee_privileges (employee_id, privilege_id) VALUES
(1, 1),(1, 2),
(2, 1),(2, 2),(2, 3),(2, 4),
(3, 2),
(4, 2),(4, 3),
(5, 1),(5, 2),(5, 3);

-- customers
INSERT INTO customers (company, last_name, first_name, email_address, job_title, business_phone, address, city, state_province, zip_postal_code, country_region) VALUES
('Company A',  'Bedecs',     'Anna',    'anna@companya.com',    'Owner',                '(123)555-0100', '123 1st Street',        'Seattle',       'WA',  '99999', 'USA'),
('Company B',  'Gratacos',   'Antonio', 'antonio@companyb.com', 'Owner',                '(123)555-0200', '123 2nd Street',        'Boston',        'MA',  '99999', 'USA'),
('Company C',  'Axen',       'Thomas',  'thomas@companyc.com',  'Purchasing Rep',       '(123)555-0300', '123 3rd Street',        'Los Angeles',   'CA',  '99999', 'USA'),
('Company D',  'Lee',        'Christina','chris@companyd.com',  'Purchasing Manager',   '(123)555-0400', '123 4th Street',        'New York',      'NY',  '99999', 'USA'),
('Company E',  'O''Donnell', 'Martin',  'martin@companye.com',  'Owner',                '(123)555-0500', '123 5th Street',        'Minneapolis',   'MN',  '99999', 'USA'),
('Company F',  'Pérez-Olaeta','Francisco','fran@companyf.com', 'Purchasing Manager',   '(123)555-0600', '123 6th Street',        'Milwaukee',     'WI',  '99999', 'USA'),
('Company G',  'Xie',        'Ming-Yang','ming@companyg.com',  'Owner',                '(123)555-0700', '123 7th Street',        'Boise',         'ID',  '99999', 'USA'),
('Company H',  'Andersen',   'Elizabeth','liz@companyh.com',   'Purchasing Manager',   '(123)555-0800', '123 8th Street',        'Portland',      'OR',  '99999', 'USA'),
('Company I',  'Mortensen',  'Sven',    'sven@companyi.com',    'Purchasing Manager',   '(123)555-0900', '123 9th Street',        'Salt Lake City','UT',  '99999', 'USA'),
('Company J',  'Wacker',     'Roland',  'roland@companyj.com',  'Purchasing Manager',   '(123)555-1000', '123 10th Street',       'Chicago',       'IL',  '99999', 'USA');

-- shippers
INSERT INTO shippers (company, last_name, first_name, email_address, job_title, business_phone, address, city, state_province, zip_postal_code, country_region) VALUES
('Shipping Company A', 'Hance',    'Michael', 'michael@shipa.com', 'Shipping Coordinator', '(123)555-0100', '123 Carrier Lane', 'Memphis',    'TN', '38101', 'USA'),
('Shipping Company B', 'Hasselberg','Jonas',  'jonas@shipb.com',   'Shipping Coordinator', '(123)555-0200', '456 Freight Blvd', 'Louisville', 'KY', '40201', 'USA'),
('Shipping Company C', 'Todman',   'Patricia','pat@shipc.com',     'Shipping Coordinator', '(123)555-0300', '789 Parcel Ave',   'Cincinnati', 'OH', '45201', 'USA');

-- suppliers
INSERT INTO suppliers (company, last_name, first_name, email_address, job_title, business_phone, address, city, state_province, zip_postal_code, country_region) VALUES
('Exotic Liquids',          'Charlotte',  'Cooper',  'c.cooper@exotic.com',   'Purchasing Manager', '(171)555-2222', '49 Gilbert St.',       'London',     NULL,  'EC1 4SD', 'UK'),
('New Orleans Cajun Delights','Shelley',  'Burke',   's.burke@cajun.com',     'Order Admin',        '(100)555-4822', 'P.O. Box 78934',       'New Orleans','LA',  '70117',   'USA'),
('Grandma Kelly''s Homestead','Regina',  'Murphy',  'r.murphy@grandma.com',  'Sales Rep',          '(313)555-5735', '707 Oxford Rd.',       'Ann Arbor',  'MI',  '48104',   'USA'),
('Tokyo Traders',           'Yoshi',      'Nagase',  'y.nagase@tokyotr.com',  'Marketing Manager',  '(03)3555-5011', '9-8 Sekimai Musashino-shi','Tokyo',NULL, '100',     'Japan'),
('Cooperativa de Quesos Las Cabras','Antonio','del Valle Saavedra','a.delvalle@cabras.com','Export Admin','(98)598-3833','Calle del Rosal 4', 'Oviedo',NULL,'33007','Spain');

-- products
INSERT INTO products (supplier_ids, product_code, product_name, description, standard_cost, list_price, reorder_level, target_level, quantity_per_unit, discontinued, minimum_reorder_quantity, category) VALUES
('1',  'NWTB-1',  'Northwind Traders Chai',           'Soft drink',       13.5,  18.0,  10, 40, '10 boxes x 20 bags',  0, 10, 'Beverages'),
('1',  'NWTCO-3', 'Northwind Traders Syrup',          'Condiment',         7.5,  10.0,  25, 100,'12 - 550 ml bottles', 0, 25, 'Condiments'),
('1',  'NWTCO-4', 'Northwind Traders Cajun Seasoning','Condiment',        16.5,  22.0,  10, 40, '48 - 6 oz jars',      0, 10, 'Condiments'),
('2',  'NWTCO-5', 'Northwind Traders Olive Oil',      'Oil',              16.0,  21.35, 10, 40, '36 boxes',            0, 10, 'Condiments'),
('3',  'NWTJP-6', 'Northwind Traders Boysenberry Spread','Jam/Jelly',     18.75, 25.0,  25, 100,'12 - 8 oz jars',     0, 25, 'Jams, Preserves'),
('3',  'NWTJP-7', 'Northwind Traders Dried Pears',    'Dried Fruit',      22.5,  30.0,  10, 40, '12 - 1 lb pkgs.',     0, 10, 'Dried Fruit & Nuts'),
('4',  'NWTS-8',  'Northwind Traders Curry Sauce',    'Sauce',            30.0,  40.0,  10, 40, '12 - 12 oz jars',     0, 10, 'Sauces'),
('4',  'NWTS-9',  'Northwind Traders Walnuts',        'Nut',              20.0,  24.0,   5, 20, '40 - 100 g pkgs.',    0,  5, 'Dried Fruit & Nuts'),
('5',  'NWTCFV-17','Northwind Traders Fruit Cocktail', 'Canned Fruit',    35.0,  39.0,  10, 40, '24 - 15.25 oz tins',  0, 10, 'Canned Fruit & Veg'),
('5',  'NWTBGM-19','Northwind Traders Chocolate Biscuits Mix','Biscuit mix',7.0, 9.2,   5, 20, '10 boxes',            0,  5, 'Baked Goods & Mixes');

-- orders (10 sample orders)
INSERT INTO orders (employee_id, customer_id, order_date, shipped_date, shipper_id, ship_name, ship_address, ship_city, ship_state_province, ship_zip_postal_code, ship_country_region, shipping_fee, taxes, payment_type, paid_date, tax_rate, tax_status_id, status_id) VALUES
(1, 1, '2024-01-15 09:00:00', '2024-01-20 14:00:00', 1, 'Anna Bedecs',    '123 1st Street',  'Seattle',       'WA', '99999', 'USA', 10.00, 0.00, 'Credit Card', '2024-01-15 09:05:00', 0, 2, 3),
(2, 2, '2024-01-18 10:30:00', '2024-01-23 11:00:00', 2, 'Antonio Gratacos','123 2nd Street', 'Boston',        'MA', '99999', 'USA', 12.50, 0.00, 'Credit Card', '2024-01-18 10:35:00', 0, 2, 3),
(3, 3, '2024-02-01 08:00:00', '2024-02-06 09:00:00', 1, 'Thomas Axen',    '123 3rd Street',  'Los Angeles',   'CA', '99999', 'USA',  5.00, 0.00, 'Check',       '2024-02-01 08:10:00', 0, 2, 3),
(4, 4, '2024-02-10 13:00:00', '2024-02-15 14:00:00', 3, 'Christina Lee',  '123 4th Street',  'New York',      'NY', '99999', 'USA', 15.00, 5.00, 'Credit Card', '2024-02-10 13:05:00', 0, 1, 3),
(1, 5, '2024-03-05 11:00:00', '2024-03-10 12:00:00', 2, 'Martin O''Donnell','123 5th Street','Minneapolis',   'MN', '99999', 'USA',  8.00, 0.00, 'Credit Card', '2024-03-05 11:05:00', 0, 2, 2),
(5, 6, '2024-03-12 09:30:00', '2024-03-17 10:00:00', 1, 'Francisco Pérez','123 6th Street',  'Milwaukee',     'WI', '99999', 'USA', 20.00, 0.00, 'Wire Transfer','2024-03-12 09:35:00',0, 2, 2),
(2, 7, '2024-04-01 14:00:00', NULL,                  2, 'Ming-Yang Xie',  '123 7th Street',  'Boise',         'ID', '99999', 'USA',  6.00, 0.00, 'Credit Card', '2024-04-01 14:05:00', 0, 2, 1),
(3, 8, '2024-04-05 10:00:00', NULL,                  3, 'Elizabeth Andersen','123 8th Street','Portland',     'OR', '99999', 'USA',  9.50, 0.00, 'Credit Card', '2024-04-05 10:05:00', 0, 2, 1),
(4, 9, '2024-04-10 16:00:00', NULL,                  1, 'Sven Mortensen', '123 9th Street',  'Salt Lake City','UT', '99999', 'USA',  7.00, 0.00, 'Check',       NULL,                  0, 2, 0),
(5,10, '2024-04-15 09:00:00', NULL,                  2, 'Roland Wacker',  '123 10th Street', 'Chicago',       'IL', '99999', 'USA', 11.00, 0.00, 'Credit Card', NULL,                  0, 2, 0);

-- order_details
INSERT INTO order_details (order_id, product_id, quantity, unit_price, discount, status_id) VALUES
(1, 1, 10, 18.00, 0,    3),
(1, 2,  5, 10.00, 0,    3),
(2, 3,  8, 22.00, 0.05, 3),
(2, 4,  2, 21.35, 0,    3),
(3, 5,  4, 25.00, 0.1,  3),
(3, 6,  6, 30.00, 0,    3),
(4, 7,  3, 40.00, 0,    3),
(4, 8, 10, 24.00, 0.05, 3),
(5, 9,  2, 39.00, 0,    2),
(5,10, 15,  9.20, 0,    2),
(6, 1,  5, 18.00, 0.1,  2),
(6, 3,  3, 22.00, 0,    2),
(7, 2, 12, 10.00, 0,    1),
(7, 5,  4, 25.00, 0,    1),
(8, 6,  7, 30.00, 0.05, 1),
(8, 7,  2, 40.00, 0,    1),
(9, 8,  5, 24.00, 0,    0),
(9, 9,  3, 39.00, 0,    0),
(10,10, 8,  9.20, 0,    0),
(10, 1, 6, 18.00, 0,    0);

-- purchase_orders
INSERT INTO purchase_orders (supplier_id, created_by, submitted_date, creation_date, status_id, expected_date, shipping_fee, taxes, payment_date, payment_amount, payment_method, approved_by, approved_date, submitted_by) VALUES
(1, 2, '2024-01-10 09:00:00', '2024-01-09 08:00:00', 3, '2024-01-20 00:00:00', 5.00, 0.00, '2024-01-10 09:05:00', 500.00, 'Wire Transfer', 2, '2024-01-10 10:00:00', 2),
(2, 2, '2024-02-05 10:00:00', '2024-02-04 08:00:00', 3, '2024-02-15 00:00:00', 7.50, 0.00, '2024-02-05 10:05:00', 750.00, 'Wire Transfer', 2, '2024-02-05 11:00:00', 2),
(3, 4, '2024-03-01 09:30:00', '2024-02-28 08:00:00', 2, '2024-03-12 00:00:00', 6.00, 0.00, NULL, 0.00, NULL, 2, '2024-03-01 10:30:00', 4),
(4, 3, '2024-03-15 11:00:00', '2024-03-14 09:00:00', 1, '2024-03-25 00:00:00', 8.00, 0.00, NULL, 0.00, NULL, NULL, NULL, 3),
(5, 1, '2024-04-10 14:00:00', '2024-04-09 13:00:00', 0, '2024-04-20 00:00:00', 4.00, 0.00, NULL, 0.00, NULL, NULL, NULL, 1);

-- purchase_order_details
INSERT INTO purchase_order_details (purchase_order_id, product_id, quantity, unit_cost, date_received, posted_to_inventory) VALUES
(1, 1, 100, 13.50, '2024-01-20 10:00:00', 1),
(1, 2,  50,  7.50, '2024-01-20 10:00:00', 1),
(2, 3,  60, 16.50, '2024-02-15 11:00:00', 1),
(2, 4,  40, 16.00, '2024-02-15 11:00:00', 1),
(3, 5,  30, 18.75, NULL, 0),
(3, 6,  25, 22.50, NULL, 0),
(4, 7,  20, 30.00, NULL, 0),
(4, 8,  50, 20.00, NULL, 0),
(5, 9,  35, 35.00, NULL, 0),
(5,10,  80,  7.00, NULL, 0);

-- inventory_transactions
INSERT INTO inventory_transactions (transaction_type, transaction_created_date, transaction_modified_date, product_id, quantity, purchase_order_id, customer_order_id, comments) VALUES
(1, '2024-01-20 10:00:00', '2024-01-20 10:00:00', 1, 100, 1, NULL, 'Received from Exotic Liquids'),
(1, '2024-01-20 10:00:00', '2024-01-20 10:00:00', 2,  50, 1, NULL, 'Received from Exotic Liquids'),
(2, '2024-01-15 09:00:00', '2024-01-15 09:00:00', 1,  10, NULL, 1, 'Sold to Company A'),
(2, '2024-01-15 09:00:00', '2024-01-15 09:00:00', 2,   5, NULL, 1, 'Sold to Company A'),
(1, '2024-02-15 11:00:00', '2024-02-15 11:00:00', 3,  60, 2, NULL, 'Received from New Orleans Cajun'),
(2, '2024-02-01 08:00:00', '2024-02-01 08:00:00', 5,   4, NULL, 3, 'Sold to Company C'),
(2, '2024-02-10 13:00:00', '2024-02-10 13:00:00', 7,   3, NULL, 4, 'Sold to Company D'),
(3, '2024-03-01 07:00:00', '2024-03-01 07:00:00', 9,  50, NULL, NULL, 'Restock adjustment');

-- invoices
INSERT INTO invoices (order_id, invoice_date, due_date, tax, shipping, amount_due) VALUES
(1, '2024-01-15', '2024-02-15', 0.00, 10.00, 240.00),
(2, '2024-01-18', '2024-02-18', 0.00, 12.50, 220.30),
(3, '2024-02-01', '2024-03-01', 0.00,  5.00, 265.00),
(4, '2024-02-10', '2024-03-10', 5.00, 15.00, 380.00),
(5, '2024-03-05', '2024-04-05', 0.00,  8.00, 216.00),
(6, '2024-03-12', '2024-04-12', 0.00, 20.00, 172.00);

-- sales_reports
INSERT INTO sales_reports (group_by, display, title, filter_row_source, is_default) VALUES
('Category',        'Category',         'Sales by Category',        'SELECT DISTINCT category FROM products ORDER BY category',    1),
('Customer',        'Company Name',     'Sales by Customer',        'SELECT DISTINCT company FROM customers ORDER BY company',      0),
('Employee',        'Last Name',        'Sales by Employee',        'SELECT DISTINCT last_name FROM employees ORDER BY last_name',  0),
('Product',         'Product Name',     'Sales by Product',         'SELECT DISTINCT product_name FROM products ORDER BY product_name', 0),
('ShippingCountry', 'Ship Country',     'Sales by Shipping Country','SELECT DISTINCT ship_country_region FROM orders ORDER BY ship_country_region', 0);

-- strings
INSERT INTO strings (string_data) VALUES
('Welcome to Northwind Traders!'),
('Thank you for your order.'),
('Your order has been shipped.'),
('Please contact us for any questions.'),
('Order confirmation');