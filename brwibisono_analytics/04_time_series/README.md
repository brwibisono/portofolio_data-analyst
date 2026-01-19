# Project 4 — Time Series & Revenue Trend Analysis

## Latar Belakang
Dalam bisnis e-commerce, memahami performa penjualan dari waktu ke waktu sangat penting untuk memantau pertumbuhan, mengidentifikasi pola musiman, dan mendeteksi anomali performa.

Project ini bertujuan untuk menganalisis **tren revenue dan transaksi berdasarkan waktu**, sehingga memberikan gambaran perkembangan bisnis secara berkelanjutan.

---

## Tujuan Analisis
1. Menganalisis tren revenue dari waktu ke waktu
2. Mengidentifikasi pola musiman penjualan
3. Menyediakan insight untuk monitoring performa bisnis

---

## Dataset & Scope
Dataset yang digunakan berasal dari **thelook_ecommerce**, yang telah dipersiapkan pada folder `00_setup`.

### Tabel yang Digunakan
- `orders`
- `order_items`

Objek analisis utama pada project ini adalah **waktu (time-based analysis)**.

---

## Pendekatan Analisis
Analisis dilakukan dengan pendekatan time series sederhana:
1. Menggabungkan data order dan transaksi
2. Melakukan agregasi berdasarkan waktu (harian dan bulanan)
3. Menganalisis tren dan perubahan performa

Query SQL dibuat ringkas dengan fokus pada agregasi waktu sebagai dasar visualisasi.

---

## Metrik Utama
- Total Revenue
- Total Orders
- Average Order Value (AOV)

---

## Insight Utama
- Terlihat tren pertumbuhan revenue dari waktu ke waktu
- Terdapat fluktuasi penjualan pada periode tertentu
- Pola musiman dapat diidentifikasi pada level bulanan

---

## Rekomendasi Bisnis
- Memanfaatkan periode dengan performa tinggi untuk promosi
- Mempersiapkan stok dan kampanye pada periode musiman
- Menggunakan tren historis sebagai baseline target penjualan

---

## Output
- Query SQL time series
- Tabel agregasi waktu
- Dashboard tren penjualan (Tableau)
- Insight dan rekomendasi berbasis data

---

## Catatan
Project ini melengkapi analisis customer, product, dan funnel dengan perspektif **waktu**, sehingga memberikan gambaran menyeluruh terhadap performa bisnis e-commerce.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**
