SELECT nama,kelas,MIN(nilai)
FROM siswa;

SELECT nama,kelas,MAX(nilai)
FROM siswa;

SELECT tempatlahir,MIN(nilai)
FROM siswa
GROUP BY tempatlahir;

SELECT tempatlahir,MAX(nilai)
FROM siswa
GROUP BY tempatlahir;

SELECT tempatlahir,MIN(nilai) AS nilai_terendah,MAX(nilai) AS nilai_tertinggi
FROM siswa
GROUP BY tempatlahir;

SELECT tempatlahir,MAX(nilai)
FROM siswa;
SELECT tempatlahir,COUNT(tempatlahir) AS orang_lahir 
FROM siswa 
GROUP BY tempatlahir

SELECT jk,AVG(nilai) AS rata_rata
FROM siswa 
GROUP BY jk

SELECT jk,SUM(nilai) AS jumlah_nilai
FROM siswa 
GROUP BY jk

CREATE TABLE pinjambuku(
    id_pinjam INT(11),
    nis CHAR (8),
    nama_buku VARCHAR (100),
    PRIMARY KEY (id_pinjam));

    INSERT INTO pinjambuku (id_pinjam,nis,nama_buku)
VALUES ('1','12002429','BASIS DATA'),('2','12002439','BULAN'),('3','12002540','BASIS DATA'),
('4','12002540','PEMROGRAMAN WEB'),('5','12003010','PBO'),('6','12004000','DILAN 1991');

SELECT siswa.,pinjambuku.
FROM siswa
JOIN pinjambuku
ON siswa.nis = pinjambuku.nis;

SELECT siswa.,pinjambuku.
FROM siswa
RIGHT JOIN pinjambuku
ON siswa.nis = pinjambuku.nis;

SELECT siswa.,pinjambuku.
FROM siswa
LEFT JOIN pinjambuku
ON siswa.nis = pinjambuku.nis;

SELECT siswa.,pinjambuku.
FROM siswa
LEFT JOIN pinjambuku
ON siswa.nis = pinjambuku.nis
WHERE pinjambuku.nis IS NULL