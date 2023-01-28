-- PART 3 - DATA MANIPULATION LANGUAGE
-- Release 2: Join, Union, and Subquery

-- 1. GABUNGKAN DATA TRANSAKSI DARI USER ID 1 DAN USER ID 2
select payment_method_id, status 
from transaction
where user_id = 1
union
select payment_method_id, status
from transaction
where user_id = 2;

-- 2. TAMPILKAN JUMLAH HARGA TRANSAKSI USER ID 1
select u.nama,
count(*),
sum(td.qty * p.price)
from `transaction_detail` td
left join product p on p.id = td.product_id
left join user u on u.id = td.transaction_id
where u.id = 1;

-- 3. TAMPILKAN TOTAL TRANSAKSI DENGAN PRODUCT TYPE 2
select product_type_id,
count(*),
sum(td.qty * p.price)
from `transaction_detail` td
left join product p on p.id = td.product_id
left join user u on u.id = td.transaction_id
where product_type_id = 2;

-- 4. TAMPILKAN SEMUA FIELD TABLE PRODUCT DAN FIELD NAME TABLE PRODUCT TYPE YANG SALING BERHUBUNGAN
select p.*, pt.nama
from product p
left join product_type pt on p.product_type_id = pt.id;

-- 5. TAMPILKAN SEMUA FIELD TABLE TRANSACTION, FIELD NAME TABLE PRODUCT DAN FIELD NAME TABLE USER
select t.*, p.nama, u.nama
from transaction t
left join user u on u.nama = u.nama
left join product p on p.nama = p.nama;

-- 8. TAMPILKAN DATA PRODUCTS YANG TIDAK PERNAH ADA DI TABLE TRANSACTION_DETAIL DENGAN SUB-QUERY
select* from product where not exists
(select* from transaction_detail);
select* from transaction_detail where not exists
(select* from product);
select td.*, p.id, p.nama
from transaction_detail td
left join product p on p.nama = td.id
where p.nama is null;