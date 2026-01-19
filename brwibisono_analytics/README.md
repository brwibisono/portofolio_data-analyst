# E-commerce Data Analysis
**Dataset: thelook_ecommerce**

## Deskripsi Proyek
Repository ini berisi kumpulan project **data analysis** menggunakan dataset publik **thelook_ecommerce**.  
Setiap project dirancang untuk merepresentasikan **kasus bisnis nyata di perusahaan e-commerce**, mulai dari identifikasi masalah bisnis, pengolahan data, analisis, hingga penyusunan insight dan rekomendasi.

Proyek-proyek di dalam repository ini disusun sebagai bagian dari:
- Portofolio Data Analyst
- Latihan analisis bisnis berbasis data

---

## Tujuan Utama
Tujuan utama dari repository ini adalah untuk menunjukkan kemampuan dalam:
1. Memahami kebutuhan bisnis dan menerjemahkannya ke analisis data
2. Mengelola dan memvalidasi data dengan SQL (BigQuery)
3. Menghasilkan metrik dan KPI yang relevan
4. Menyampaikan insight bisnis secara terstruktur
5. Menghubungkan hasil analisis dengan rekomendasi bisnis yang dapat ditindaklanjuti

---

## Dataset
Dataset yang digunakan adalah **thelook_ecommerce**, sebuah dataset publik yang mensimulasikan data transaksi e-commerce, meliputi informasi:
- Customer
- Produk
- Transaksi
- Perilaku pembelian

Dataset publik tersebut disalin ke project BigQuery pribadi untuk memastikan konsistensi dan reproducibility analisis.

---

## Validasi Data
Sebelum melakukan analisis, dilakukan validasi data untuk memastikan kualitas data, antara lain:
- Memastikan tidak ada order tanpa item
- Mengidentifikasi customer yang belum pernah melakukan transaksi

Validasi ini penting agar hasil analisis tidak bias akibat data yang tidak lengkap.

---

## Struktur Repository
```
├── 00_setup/                       # Duplikasi dan validasi dataset
├── 01_customer_behavior/           # Analisa perilaku customer
├── 02_product_performance/         # Evaluasi performa product
├── 03_sales_funnel/                # Analisis funnel penjualan
├── 04_time_series/                 # Analisa tren penjualan
├── 05_cohort_retention/            # Analisa cohort customer
└── README.md
```

---

Folder project berisi:
- Query SQL
- Visual
- Pendekatan analisis
- Insight utama

---

## Daftar Project

### Project 1 — Customer Behavior & Segmentation
Analisis perilaku customer dan segmentasi berdasarkan nilai transaksi untuk memahami customer bernilai tinggi dan peluang retensi.

---

### Project 2 — Product Performance Analysis
Evaluasi performa produk berdasarkan penjualan dan revenue untuk mendukung keputusan inventory dan pricing.

---

### Project 3 — Sales Funnel & Conversion Analysis
Analisis funnel penjualan untuk mengidentifikasi titik drop-off dan peluang peningkatan konversi.

---

### Project 4 — Time Series & Seasonality Analysis
Analisis tren penjualan berdasarkan waktu untuk memahami pola musiman dan mendukung perencanaan campaign.

---

### Project 5 — Cohort Retention Analysis
Analisis cohort customer untuk mengukur retensi dan kualitas akuisisi customer dari waktu ke waktu.

---

## Metodologi Analisis
Pendekatan analisis dalam repository ini mengikuti alur berikut:
1. Identifikasi masalah bisnis
2. Pengumpulan dan validasi data
3. Eksplorasi dan agregasi data
4. Perhitungan metrik dan KPI
5. Interpretasi hasil
6. Penyusunan insight dan rekomendasi

Pendekatan ini menekankan **ketepatan analisis dan relevansi bisnis**, bukan sekadar eksplorasi teknis.

---

## Tools & Teknologi
- Google BigQuery (SQL)
- Tableau (visualisasi dan dashboard)

---

## Catatan Akhir
Repository ini disusun dengan fokus pada **logika analisis, kualitas data, dan storytelling bisnis**.  
Setiap project berdiri sendiri namun saling melengkapi untuk memberikan gambaran menyeluruh mengenai performa bisnis e-commerce.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**

