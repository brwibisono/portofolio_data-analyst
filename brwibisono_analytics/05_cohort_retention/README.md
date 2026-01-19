# Project 5 — Cohort & Retention Analysis

## Latar Belakang
Akuisisi user baru merupakan bagian penting dalam bisnis e-commerce, namun pertumbuhan yang berkelanjutan sangat bergantung pada kemampuan bisnis dalam **mempertahankan customer**.

Project ini bertujuan untuk menganalisis **retensi customer menggunakan cohort analysis**, guna memahami pola repeat purchase dan loyalitas customer dari waktu ke waktu.

---

## Tujuan Analisis
1. Mengukur tingkat retensi customer berdasarkan cohort
2. Mengidentifikasi pola repeat purchase setelah pembelian pertama
3. Mengevaluasi kualitas customer yang diakuisisi pada periode tertentu

---

## Dataset & Scope
Dataset yang digunakan berasal dari **thelook_ecommerce**, yang telah dipersiapkan pada folder `00_setup`.

### Tabel yang Digunakan
- `orders`
- `order_items`

Objek analisis utama pada project ini adalah **customer cohort berdasarkan bulan pembelian pertama**.

---

## Definisi Cohort
Cohort didefinisikan sebagai:
- **Cohort Month**: bulan pertama customer melakukan pembelian
- **Cohort Index**: jarak bulan antara pembelian pertama dan pembelian berikutnya

---

## Pendekatan Analisis
Analisis dilakukan dengan pendekatan berikut:
1. Menentukan bulan pembelian pertama setiap customer
2. Mengelompokkan customer ke dalam cohort berdasarkan bulan pertama
3. Menghitung jumlah customer aktif pada setiap periode setelah pembelian pertama
4. Menghitung retention rate berdasarkan cohort

Query SQL dibuat ringkas dan fokus pada perhitungan cohort dan retention.

---

## Metrik Utama
- Number of Customers per Cohort
- Active Customers per Period
- Retention Rate (%)

---

## Insight Utama
- Terjadi penurunan jumlah customer secara signifikan setelah pembelian pertama
- Retensi customer cenderung stabil setelah beberapa periode
- Kualitas cohort berbeda-beda tergantung periode akuisisi

---

## Rekomendasi Bisnis
- Fokus pada strategi retensi setelah pembelian pertama
- Optimasi program loyalty dan follow-up campaign
- Evaluasi channel akuisisi berdasarkan kualitas cohort

---

## Output
- Query SQL cohort & retention
- Tabel cohort retention
- Dashboard retention sederhana (Tableau)
- Insight dan rekomendasi berbasis data

---

## Catatan
Project ini melengkapi seluruh rangkaian analisis dengan fokus pada **retensi dan loyalitas customer**, sehingga memberikan gambaran end-to-end performa bisnis e-commerce.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities,  
feel free to reach out:

📧 **br.wibisono@gmail.com**

