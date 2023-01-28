-- PART 3 - DATA MANIPULATION LANGUAGE
-- Release 1: Create, Update, dan Delete Data

-- 2. SELECT
-- a. Tampilkan Nama User/Pelanggan dengan Gender Laki-laki/M
select nama, gender
from user
where gender = 'LAKI_LAKI';

-- b. Tampilkan Product dengan Id = 3
select*
from product
where id = 3;

-- c. Tampilkan Data Pelanggan yang Created_at dalam Range 7 Hari Kebelakang dan Mempunyai Nama Mengandung kata 'a'
select*
from user
where created_at > date_sub(now(), interval 7 day) and nama like '%a%';

-- d. Hitung Jumlah User/Pelanggan dengan Status Gender Perempuan
select count(gender)
from user
where gender = 'PEREMPUAN';

-- e. Tampilkan Data Pelanggan Dengan Urutan Sesuai Nama Abjad
select*
from user
order by nama asc;

-- f. Tampilkan 5 Data Transaksi dengan Product Id = 3
select*
from transaction_detail
where product_id = 3
limit 5;