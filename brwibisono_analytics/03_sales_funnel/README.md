# Project 3 — Sales Funnel & Conversion Analysis

## Latar Belakang
Dalam bisnis e-commerce, tingginya jumlah user tidak selalu berbanding lurus dengan jumlah transaksi.  
Banyak user berhenti di tengah proses pembelian, sehingga penting untuk memahami **di tahap mana user paling banyak mengalami drop-off**.

Project ini bertujuan untuk menganalisis **sales funnel dari user hingga transaksi**, serta mengukur conversion rate pada setiap tahap funnel.

---

## Tujuan Analisis
1. Mengukur conversion rate dari user ke pembeli
2. Mengidentifikasi tahap funnel dengan drop-off terbesar
3. Memberikan insight untuk optimasi funnel penjualan

---

## Dataset & Scope
Dataset yang digunakan berasal dari **thelook_ecommerce**, yang telah melalui tahap persiapan pada folder `00_setup`.

### Tabel yang Digunakan
- `users`
- `orders`
- `order_items`

Objek analisis utama pada project ini adalah **funnel stage**.

---

## Pendekatan Analisis
Analisis dilakukan dengan pendekatan funnel sederhana:
1. Total registered users
2. Users yang melakukan order
3. Orders yang menghasilkan transaksi (order dengan item)

Setiap tahap dihitung untuk mengetahui tingkat konversi dan potensi kehilangan user.

---

## Metrik Utama
- Total Users
- Buyers (Users with Orders)
- Paid Orders
- Conversion Rate (%)

---

## Insight Utama
- Terjadi penurunan signifikan dari user terdaftar ke user yang melakukan transaksi
- Tidak semua order berhasil menghasilkan transaksi
- Tahap awal funnel memiliki potensi optimasi terbesar

---

## Rekomendasi Bisnis
- Optimasi onboarding dan call-to-action pada tahap awal
- Evaluasi proses checkout untuk mengurangi friction
- Retargeting user yang belum menyelesaikan pembelian

---

## Output
- Tabel funnel summary
- Query SQL funnel analysis
- Dashboard funnel sederhana
- Insight dan rekomendasi berbasis data

---

## Catatan
Project ini melengkapi analisis customer dan product dengan perspektif **proses penjualan**, sehingga memberikan gambaran end-to-end perjalanan user dalam e-commerce.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**
