# 00_setup — Dataset Preparation & Validation

## Deskripsi
Folder ini berisi proses awal untuk menyiapkan dataset **thelook_ecommerce** sebelum digunakan pada seluruh project analisis.

Tahapan pada folder ini bertujuan untuk memastikan:
- Dataset tersedia di environment kerja pribadi
- Struktur data konsisten
- Kualitas data dapat dipercaya sebelum analisis dilakukan

Langkah ini penting agar seluruh insight yang dihasilkan pada project berikutnya tidak bias akibat data yang tidak lengkap atau tidak valid.

---

## Tujuan
1. Menyalin dataset publik ke project BigQuery pribadi
2. Menjaga reproducibility analisis
3. Melakukan validasi awal kualitas data
4. Menjadi fondasi untuk seluruh project analisis selanjutnya

---

## Proses yang Dilakukan

### 1. Duplikasi Dataset
Dataset publik **thelook_ecommerce** disalin ke dataset internal project untuk:
- Menghindari perubahan dari sumber publik
- Menjaga konsistensi data selama analisis

---

### 2. Validasi Data Awal
Validasi dilakukan untuk mendeteksi potensi masalah data, seperti:
- Order tanpa item
- Customer yang belum pernah melakukan transaksi
- Relasi antar tabel yang tidak konsisten

Validasi ini tidak bertujuan menghapus data, tetapi untuk memahami kondisi data sebelum analisis.

---

## Output
- Dataset siap pakai di BigQuery
- Query validasi data
- Pemahaman awal terhadap kualitas dan keterbatasan data

---

## Catatan
Folder ini tidak menghasilkan insight bisnis secara langsung, namun berperan penting dalam memastikan seluruh project analisis selanjutnya memiliki dasar data yang kuat dan dapat dipertanggung jawabkan.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**
