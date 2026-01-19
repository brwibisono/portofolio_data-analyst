# Project 1 - Customer Behavior & Segmentation

## Latar Belakang
Dalam bisnis e-commerce, tidak semua customer memiliki kontribusi yang sama terhadap pendapatan. Sebagian customer hanya melakukan satu kali transaksi, sementara sebagian kecil lainnya memberikan kontribusi revenue yang signifikan.

Project ini berfokus pada analisis perilaku customer dan segmentasi berdasarkan nilai transaksi untuk mendukung strategi retensi dan marketing yang lebih efektif.

---

## Tujuan Analisis
1. Mengidentifikasi jumlah customer aktif dan repeat customer
2. Mengukur kontribusi revenue per customer
3. Melakukan segmentasi customer berdasarkan nilai transaksi
4. Memberikan insight bisnis berbasis data

---

## Dataset & Scope
Dataset yang digunakan berasal dari **thelook_ecommerce** yang telah melalui tahap persiapan dan validasi pada folder `00_setup`.

### Tabel yang Digunakan
- `users`
- `orders`
- `order_items`

Objek analisis utama pada project ini adalah **customer (user_id)**.

---

## Pendekatan Analisis
Analisis dilakukan melalui tahapan berikut:
1. Validasi relasi antar tabel
2. Agregasi data ke level customer
3. Perhitungan metrik utama
4. Segmentasi customer
5. Interpretasi hasil

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
Customer dikelompokkan berdasarkan total nilai transaksi:
- **High Value Customer**
- **Medium Value Customer**
- **Low Value Customer**

Segmentasi ini digunakan untuk memahami distribusi nilai customer dan kontribusinya terhadap total revenue.

---

## Insight Utama
- Mayoritas customer hanya melakukan satu kali transaksi
- Sebagian kecil customer memberikan kontribusi revenue terbesar
- Tingkat repeat customer masih relatif rendah

---

## Rekomendasi Bisnis
- Program retensi untuk meningkatkan repeat order
- Loyalty program untuk customer bernilai tinggi
- Strategi bundling atau promo untuk customer bernilai rendah

---

## Output
- Query SQL agregasi customer
- Tabel metrik customer
- Insight dan rekomendasi berbasis data
- (Opsional) Dashboard visualisasi

---

## Catatan
Project ini menjadi dasar pemahaman perilaku customer yang akan digunakan sebagai referensi pada project analisis lanjutan.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**

