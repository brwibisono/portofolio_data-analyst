# Project 2 - Product Performance Analysis

## Latar Belakang
Dalam bisnis e-commerce, tidak semua produk memberikan kontribusi yang sama terhadap penjualan dan revenue.  
Sebagian produk menjadi *hero product* dengan kontribusi revenue besar, sementara produk lain memiliki performa rendah dan berpotensi membebani inventory.

Project ini bertujuan untuk menganalisis **performa produk berdasarkan penjualan dan revenue** guna mendukung pengambilan keputusan terkait inventory, pricing, dan strategi produk.

---

## Tujuan Analisis
1. Mengidentifikasi produk dengan kontribusi revenue tertinggi
2. Mengetahui produk dengan volume penjualan tinggi namun revenue rendah
3. Menganalisis distribusi performa produk
4. Memberikan insight untuk optimasi inventory dan strategi produk

---

## Dataset & Scope
Dataset yang digunakan berasal dari **thelook_ecommerce** dan telah melalui tahap persiapan serta validasi pada folder `00_setup`.

### Tabel yang Digunakan
- `products`
- `order_items`
- `orders`

Objek analisis utama pada project ini adalah **product (product_id)**.

---

## Pendekatan Analisis
Analisis dilakukan melalui tahapan berikut:
1. Validasi data transaksi produk
2. Agregasi data ke level produk
3. Perhitungan metrik performa produk
4. Klasifikasi produk berdasarkan kontribusi
5. Interpretasi hasil dan rekomendasi bisnis

---

## Metrik Utama (KPI)
Beberapa metrik utama yang digunakan dalam analisis ini:
- Total Revenue per Product
- Total Quantity Sold
- Average Selling Price
- Revenue Contribution (%)

---

## Analisis Performa Produk
Produk dianalisis berdasarkan:
- Kontribusi revenue
- Volume penjualan
- Harga rata-rata

Analisis ini membantu mengidentifikasi:
- **Hero Products** (high revenue)
- **High Volume – Low Revenue Products**
- **Low Performing Products**

---

## Insight Utama
Beberapa insight yang diharapkan dari analisis ini:
- Sebagian kecil produk menyumbang mayoritas revenue
- Terdapat produk dengan volume penjualan tinggi namun nilai transaksi rendah
- Produk dengan performa rendah berpotensi dioptimalkan atau dikurangi

---

## Rekomendasi Bisnis
- Fokus stocking dan promosi pada hero products
- Evaluasi strategi pricing untuk produk high volume – low revenue
- Optimasi atau eliminasi produk dengan performa rendah

---

## Output
- Tabel agregasi performa produk
- Query SQL analisis produk
- Insight dan rekomendasi berbasis data
- (Opsional) Dashboard visualisasi performa produk

---

## Catatan
Project ini melengkapi analisis perilaku customer pada Project 1 dengan fokus pada sisi produk, sehingga memberikan gambaran yang lebih menyeluruh mengenai performa bisnis e-commerce.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**

