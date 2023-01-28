-- PART 3 - DATA MANIPULATION LANGUAGE
-- Release 1: Create, Update, dan Delete Data

-- 1. INSERT
-- a. Insert 5 Operator Pada Table Operator
insert into operator (nama) values 
('Telkomsel'),
('Indosat'),
('XL'),
('Tri'),
('Smartfren');

-- b. Insert 3 Product Type
insert into product_type (nama) values
('Pulsa'),
('Paket Data'),
('Pascabayar');

-- c. Insert 2 Product Dengan Product Type Id = 1, dan Operator Id = 3
insert into product (nama, price, product_type_id, operator_id) values
('Masa aktif 7 hari', 5000, 1, 3),
('Masa aktif 10 hari', 11500, 1, 3);

-- d. Insert 3 Product Dengan Product Type Id = 2, dan Operator Id = 1
insert into product (nama, price, product_type_id, operator_id) values
('Internet Bulanan OMG 55rb', 55000, 2, 1),
('Internet Bulanan OMG 75rb', 75000, 2, 1);
insert into product (nama, price, product_type_id, operator_id) values
('Internet Bulanan OMG 110rb', 110000, 2, 1);

-- e. Insert 3 Product Dengan Product Type Id = 3, dan Operator Id = 4
insert into product (nama, price, product_type_id, operator_id) values
('Elite lite', 65000, 3, 4),
('Elite regular', 125000, 3, 4),
('Elite maxi', 250000, 3, 4);

-- f. Insert Product Description Pada Setiap Product
insert into product_description (description, product_id) values
('Pulsa XL dengan masa aktif 7 hari dan harga 5000', 1),
('Pulsa XL dengan masa aktif 10 hari dan harga 10000', 2),
('Kuota utama mulai 3.3GB + 1GB + OMG! sd 7GB + 1GB OMG!', 3),
('Kuota utama mulai 4GB + 2GB + OMG! sd 13GB + 2GB OMG!', 4),
('Kuota utama mulai 7GB + 2GB + OMG! sd 23GB + 2GB OMG!', 5),
('Kuota unlimited 3GB + ekstra kuota 4G 3GB', 6),
('Kuota unlimited 10GB + ekstra kuota 4G 10GB', 7),
('Kuota unlimited 25GB + ekstra kuota 4G 25GB', 8);

-- g. Insert 3 Payment Method
insert into payment_method (nama) values
('Virtual Account'),
('Bank Transfer'),
('Credit Card');

-- h. Insert 5 User Pada Table User
insert into user (nama, gender) values
('Maxim', 'LAKI_LAKI'),
('Desi', 'PEREMPUAN'),
('Jujun', 'LAKI_LAKI'),
('George', 'LAKI_LAKI'),
('Bakery', 'PEREMPUAN');

-- i. Insert 3 Transaksi Di Masing-masing User (Min 3 User)
insert into transaction (user_id, payment_method_id, status) values
(1, 1, 'SUCCESS'),
(2, 2, 'FAILED'),
(3, 2, 'PENDING'),
(4, 3, 'SUCCESS'),
(5, 3, 'FAILED');

-- j. Insert 3 Product Di Masing-masing Transaksi
insert into transaction_detail (product_id, qty, price, transaction_id) values
(1, 1, 5000, 4),
(8, 1, 250000, 2),
(3, 2, 110000, 5);

-- Bonus (Untuk Soal Delete)
-- Insert 1  Operator Pada Table Operator
insert into operator (nama) values 
('Token');
-- Insert 1 Product Type
insert into product_type (nama) values
('Listrik');
-- Insert 2 Product Dengan Product Type Id = 4, dan Operator Id = 5
insert into product (nama, price, product_type_id, operator_id) values
('Token 20000', 22500, 4, 5),
('Token 50000', 52500, 4, 5);