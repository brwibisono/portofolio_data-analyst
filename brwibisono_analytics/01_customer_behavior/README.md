# Project 1 — Customer Behavior & Segmentation Analysis

## Latar Belakang
Dalam bisnis e-commerce, tidak semua customer memiliki nilai yang sama. Sebagian customer hanya melakukan satu kali transaksi, sementara sebagian kecil lainnya memberikan kontribusi besar terhadap total pendapatan.

Project ini bertujuan untuk memahami **perilaku belanja customer** dan melakukan **segmentasi customer berdasarkan nilai transaksi**, sehingga hasil analisis dapat digunakan untuk mendukung strategi marketing dan retensi customer.

---

## Tujuan Analisis
1. Mengetahui jumlah customer aktif dan customer repeat
2. Mengukur kontribusi revenue dari masing-masing customer
3. Melakukan segmentasi customer berdasarkan nilai transaksi
4. Memberikan insight dan rekomendasi bisnis berbasis data

---

## Dataset
Dataset yang digunakan adalah dataset publik **thelook_ecommerce** yang telah disalin ke project BigQuery pribadi untuk keperluan analisis.

### Tabel yang Digunakan
| Tabel | Deskripsi |
|------|---------|
| users | Data identitas customer |
| orders | Data transaksi pemesanan |
| order_items | Detail item dan nilai transaksi |

---

## Pendekatan Analisis
Analisis dilakukan dengan pendekatan **end-to-end data analysis**, yang mencakup:

1. Identifikasi kebutuhan bisnis
2. Pengumpulan data relevan
3. Validasi kualitas data
4. Agregasi data ke level customer
5. Perhitungan metrik utama
6. Segmentasi customer
7. Penyusunan insight dan rekomendasi

---

## Metrik Utama (KPI)
Beberapa metrik utama yang digunakan dalam analisis ini:
- Total Customer
- Repeat Customer
- Repeat Rate
- Total Revenue per Customer
- Average Revenue per Customer

---

## Segmentasi Customer
Customer dikelompokkan berdasarkan total nilai transaksi menjadi:
- **High Value Customer**
- **Medium Value Customer**
- **Low Value Customer**

Segmentasi ini digunakan untuk memahami kontribusi masing-masing kelompok terhadap pendapatan perusahaan.

---

## Insight Utama
Beberapa insight yang dihasilkan dari analisis ini:
- Mayoritas customer hanya melakukan satu kali transaksi
- Sebagian kecil customer memberikan kontribusi revenue terbesar
- Tingkat repeat customer masih relatif rendah

---

## Rekomendasi Bisnis
Berdasarkan hasil analisis, rekomendasi yang dapat diberikan antara lain:
- Program retensi untuk meningkatkan repeat order
- Loyalty program untuk customer bernilai tinggi
- Strategi bundling atau promo untuk customer bernilai rendah

---

## Output
- Tabel agregasi customer di BigQuery
- Query SQL untuk analisis dan segmentasi
- Insight dan rekomendasi berbasis data
- (Opsional) Dashboard visualisasi menggunakan Tableau

---

## Tools & Teknologi
- Google BigQuery (SQL)
- Tableau untuk visualisasi data

---

## Catatan
Project ini disusun sebagai bagian dari portofolio Data Analyst dan menekankan pada pendekatan analitis, validasi data, serta penyampaian insight bisnis yang jelas.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**

