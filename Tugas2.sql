-- Nama :  Muhammad Iqwal
-- NIM : D0224025
-- Kelas : Informatika C

-- ============================
-- Contoh Query WHERE
-- ============================

mysql> SELECT nama_pemain, posisi, umur FROM pemain WHERE posisi = 'Penyerang';
+--------------------+-----------+------+
| nama_pemain        | posisi    | umur |
+--------------------+-----------+------+
| Cristiano Ronaldo  | Penyerang |   39 |
| Marcus Rashford    | Penyerang |   27 |
| Vinicius Jr        | Penyerang |   25 |
| Robert Lewandowski | Penyerang |   36 |
| Mohamed Salah      | Penyerang |   33 |
| Kylian Mbappé      | Penyerang |   26 |
| Lionel Messi       | Penyerang |   38 |
| Dusan Vlahovic     | Penyerang |   25 |
| Olivier Giroud     | Penyerang |   39 |
| Lautaro Martinez   | Penyerang |   28 |
+--------------------+-----------+------+

mysql> SELECT nama_club, negara, stadion FROM club WHERE negara = 'Inggris';
+-------------------+---------+------------------+
| nama_club         | negara  | stadion          |
+-------------------+---------+------------------+
| Manchester United | Inggris | Old Trafford     |
| Liverpool         | Inggris | Anfield          |
| Chelsea           | Inggris | Stamford Bridge  |
| Arsenal           | Inggris | Emirates Stadium |
+-------------------+---------+------------------+

mysql> SELECT id_pertendingan, skor_tuan_rumah, skor_tamu FROM pertandingan WHERE skor_tuan_rumah > skor_tamu;
+-----------------+-----------------+-----------+
| id_pertendingan | skor_tuan_rumah | skor_tamu |
+-----------------+-----------------+-----------+
|               2 |               3 |         1 |
|               4 |               2 |         0 |
|               6 |               3 |         2 |
|               7 |               4 |         1 |
|              15 |               3 |         2 |
+-----------------+-----------------+-----------+

-- ============================
-- Contoh Query BETWEEN
-- ============================

mysql> SELECT nama_pemain, umur, posisi FROM pemain WHERE umur BETWEEN 25 AND 30;
+------------------+------+-----------+
| nama_pemain      | umur | posisi    |
+------------------+------+-----------+
| Marcus Rashford  |   27 | Penyerang |
| Vinicius Jr      |   25 | Penyerang |
| Kylian Mbappé    |   26 | Penyerang |
| Dusan Vlahovic   |   25 | Penyerang |
| Kai Havertz      |   26 | Gelandang |
| Lautaro Martinez |   28 | Penyerang |
+------------------+------+-----------+

mysql> SELECT nama_club, tahun_berdiri FROM club WHERE tahun_berdiri BETWEEN 1890 AND 1910;
+-------------------+---------------+
| nama_club         | tahun_berdiri |
+-------------------+---------------+
| Real Madrid       |          1902 |
| Barcelona         |          1899 |
| Liverpool         |          1892 |
| Bayern Munich     |          1900 |
| Juventus          |          1897 |
| Chelsea           |          1905 |
| AC Milan          |          1899 |
| Inter Milan       |          1908 |
| Atletico Madrid   |          1903 |
| Borussia Dortmund |          1909 |
| Ajax              |          1900 |
+-------------------+---------------+

mysql> SELECT id_pertendingan, tanggal, club_tuan_rumah, club_tamu FROM pertandingan WHERE tanggal BETWEEN '2025-01-10' AND '2025-01-20';
+-----------------+------------+-----------------+-----------+
| id_pertendingan | tanggal    | club_tuan_rumah | club_tamu |
+-----------------+------------+-----------------+-----------+
|               1 | 2025-01-10 |               1 |         4 |
|               2 | 2025-01-12 |               2 |         3 |
|               3 | 2025-01-15 |               5 |         6 |
|               4 | 2025-01-18 |               7 |         9 |
|               5 | 2025-01-20 |               8 |        10 |
+-----------------+------------+-----------------+-----------+
