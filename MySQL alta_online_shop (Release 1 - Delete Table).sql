-- PART 3 - DATA MANIPULATION LANGUAGE
-- Release 1: Create, Update, dan Delete Data

-- 4. DELETE

-- a. Delete Data Pada Table Product Dengan Id 9
delete from product
where id = 9;

-- b. Delete pada Table Product dengan Product Type Id 4
delete from product
where product_type_id = 4;