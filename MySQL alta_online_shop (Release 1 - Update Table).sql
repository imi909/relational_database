-- PART 3 - DATA MANIPULATION LANGUAGE
-- Release 1: Create, Update, dan Delete Data

-- 3. UPDATE
-- a. Ubah Data Product Id 1 dengan Nama 'Product dummy'
update product_description 
set description = 'product dummy'
where product_id = 1;

-- b. Update Qty = 3 pada Transaksi Detail dengan Product Id = 3
update transaction_detail
set qty = 3
where product_id = 3;