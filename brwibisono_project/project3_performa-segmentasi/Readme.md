# Portofolio by brwibisono
# Proyek Analisis Performa Penjualan dan Segmentasi Pelanggan

Proyek ini adalah bagian dari portofolio saya untuk menunjukan kemampuan dalam analisis data, sesuai dengan ilmu yang sudah saya pahami per hari ini 29-September-2025. Terutama dalam penggunaan SQL pada Google BigQuery serta visualisasi menggunakan Google Looker Studio.

Proyek ini bertujuan untuk menganalisis demografis penjualan pada periode tertentu untuk mengetahui kategori produk terlaris, usia dan asal negara dominan dari konsumen.

---

## Ringkasan Proyek

Proyek ini mencakup tiga bagian utama.

1. Analisis Data dengan SQL
Saya menggunakan Google BigQuery untuk melakukan fungsi cte, join, agregasi, filter, date/time, window, serta pengelompokan data.

2. Visualisasi Data
Hasil dari analisis SQL saya visualisasikan menggunakan Google Looker Studio agar menjadi dashboard interaktif untuk memudahkan pemahaman tentang data yang dihasilkan. Karena keterbatasan kemampuan visualisasi saya saat ini, report visual akan terus saya update agar menjadi semakin baik. Link report visual saya lampirkan.  

3. Temuan utama (key insight)
* Sebagian besar pendapatan kemungkinan besar berasal dari sejumlah kecil kategori produk yang sangat populer (top categories) dan dibeli oleh segmen pelanggan paling berharga, yaitu 'Pelanggan Loyal'. Mengalokasikan sumber daya secara tidak merata pada area ini akan memberikan keuntungan maksimal.
  - Marketing: Prioritaskan anggaran iklan dan kampanye email untuk produk-produk dari 3 kategori teratas, yang secara khusus menargetkan segmen 'Pelanggan Loyal' dan 'Potensial Loyal'.
  - Manajemen Stok: Pastikan stok untuk produk dan kategori terlaris ini tidak pernah habis (aman dari stock-out), bahkan jika itu berarti mengurangi stok untuk produk yang kurang laku.
* Ada pola waktu yang jelas kapan pelanggan paling aktif bertransaksi (misalnya, akhir pekan atau hari kerja tertentu). Menyesuaikan jadwal promosi dengan waktu puncak ini dapat meningkatkan konversi secara signifikan, terutama untuk segmen pelanggan yang ragu-ragu atau berisiko.
  - Jadwalkan pengiriman email promosi atau notifikasi aplikasi pada hari-hari puncak transaksi (misal: Jumat sore atau Sabtu pagi).
  - Buat kampanye "re-engagement" khusus untuk segmen 'Pelanggan Beresiko' yang dikirimkan tepat sebelum periode tersibuk untuk memancing mereka kembali bertransaksi.
* Pelanggan secara alami membeli produk-produk tertentu secara bersamaan. Dengan proaktif menawarkan pasangan produk ini sebagai paket (bundle) atau rekomendasi, perusahaan dapat dengan mudah meningkatkan nilai pesanan rata-rata (Average Order Value - AOV) tanpa perlu mengakuisisi pelanggan baru.
  - Fitur Website: Buat fitur "Pelanggan lain juga membeli..." di halaman produk, yang menampilkan pasangan produk yang paling sering dibeli bersama.
  - Promosi: Ciptakan penawaran diskon khusus seperti "Beli Produk A + Produk B dan dapatkan diskon 10%". Ini akan mendorong perilaku belanja yang sudah ada secara alami. Atau mendongkrak penjualan produk kurang laku dengan 'Tebus Murah'
  

## Alat dan Teknologi
* Database: BigQuery Public Dataset
* Bahasa Pemrograman: SQL
* Pemrosesan Data: Google BigQuery
* Visualisasi: Google Looker Studio


## Struktur Repository
- queries: Berisi semua file query (.sql) yang digunakan untuk proyek ini
- screenshot: Berisi tangkapan layar untuk query, hasil query dijalankan, serta visualisasi
- visual: berisi file unduhan visual dari Google Looker Studio berupa .pdf

## Visualisasi Google Looker Studio
https://lookerstudio.google.com/s/h__6WXYCNuk

## Learning Journey	
www.github.com/brwibisono/belajar-data-analis

## Daily Update
www.threads.com/@brbelajardata

## Kontak
Untuk pertanyaan atau umpan balik, silakan hubungi saya melalui br.wibisono@gmail.com
