# Project 3 — Sales Funnel & Conversion Analysis

## Latar Belakang
Dalam bisnis e-commerce, tingginya jumlah user terdaftar tidak selalu berbanding lurus dengan jumlah transaksi yang terjadi.  
Banyak user berhenti di awal perjalanan sebelum melakukan pembelian, sehingga penting untuk memahami **di tahap mana terjadi penurunan (drop-off) terbesar** dalam funnel penjualan.

Project ini berfokus pada analisis **sales funnel sederhana dari user hingga transaksi**, dengan tujuan mengukur conversion rate dan mengidentifikasi peluang optimasi pada proses penjualan.

---

## Tujuan Analisis
1. Mengukur jumlah user pada setiap tahap funnel
2. Menghitung conversion rate dari user terdaftar menjadi pembeli
3. Mengidentifikasi potensi drop-off pada funnel penjualan
4. Memberikan insight dan rekomendasi berbasis data

---

## Dataset & Scope
Dataset yang digunakan berasal dari **thelook_ecommerce**, yang telah melalui tahap persiapan dan validasi pada folder `00_setup`.

### Tabel yang Digunakan
- `users`
- `orders`
- `order_items`

Objek analisis utama pada project ini adalah **tahapan funnel penjualan**.

---

## Definisi Funnel
Funnel pada project ini didefinisikan sebagai:
1. **Total Users** – user yang terdaftar
2. **Buyers** – user yang melakukan minimal satu order
3. **Paid Orders** – total transaksi yang berhasil dilakukan

Pendekatan ini bertujuan untuk memisahkan antara **conversion user** dan **perilaku transaksi (repeat order)**.

---

## Pendekatan Analisis
Analisis dilakukan dengan pendekatan yang sederhana dan fokus:
1. Menggabungkan data user, order, dan transaksi menggunakan LEFT JOIN
2. Menghitung jumlah user dan transaksi pada setiap tahap funnel
3. Menghitung conversion rate dari user ke pembeli
4. Menyajikan hasil dalam bentuk ringkasan funnel

Query SQL dibuat ringkas dan modular, dengan fokus pada **satu funnel summary utama**.

---

## Metrik Utama
Metrik yang digunakan dalam analisis ini meliputi:
- Total Users
- Buyers
- Paid Orders
- User to Buyer Conversion Rate (%)

---

## Insight Utama
Beberapa insight yang dihasilkan dari analisis funnel:
- Terjadi penurunan signifikan dari user terdaftar ke user yang melakukan pembelian
- Jumlah paid orders lebih tinggi dibanding jumlah buyer, menunjukkan adanya repeat purchase
- Tahap awal funnel memiliki potensi optimasi terbesar

---

## Rekomendasi Bisnis
- Optimasi onboarding dan call-to-action pada tahap awal funnel
- Evaluasi pengalaman checkout untuk mengurangi hambatan pembelian
- Retargeting user yang belum melakukan transaksi untuk meningkatkan conversion rate

---

## Output
- Query SQL funnel summary
- Tabel ringkasan funnel
- Dashboard funnel sederhana (Tableau)
- Insight dan rekomendasi berbasis data

---

## Catatan
Project ini dirancang dengan pendekatan **sederhana dan komunikatif**, dengan tujuan menyampaikan insight funnel secara jelas kepada stakeholder non-teknis.  
Analisis ini melengkapi Project 1 (Customer Behavior) dan Project 2 (Product Performance) untuk memberikan gambaran end-to-end perjalanan user dalam e-commerce.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**
