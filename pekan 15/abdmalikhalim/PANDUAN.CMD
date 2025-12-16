# 🚀 Panduan Cepat Menjalankan CRUD Pegawai

## Langkah-Langkah Singkat

### 1️⃣ Setup Database (5 menit)
1. Buka **phpMyAdmin**: `http://localhost/phpmyadmin`
2. Klik tab **"SQL"**
3. Copy semua isi file **`database.sql`** dan paste ke textarea
4. Klik **"Go"** atau **"Jalankan"**
5. ✅ Database `db_pegawai` dan tabel `pegawai` sudah dibuat!

### 2️⃣ Konfigurasi Database (2 menit)
1. Buka file: `application/config/database.php`
2. Cari baris sekitar **76-81**, ubah menjadi:
   ```php
   'username' => 'root',
   'password' => '',           // Kosongkan jika default
   'database' => 'db_pegawai',
   ```

### 3️⃣ Jalankan Aplikasi (1 menit)
1. Pastikan **XAMPP** sudah running (Apache & MySQL)
2. Buka browser dan coba URL berikut (pilih salah satu):
   
   **Opsi A (Dengan index.php - PALING AMAN):**
   ```
   http://localhost/beritacoding1/index.php/pegawai
   ```
   
   **Opsi B (Tanpa index.php - jika mod_rewrite aktif):**
   ```
   http://localhost/beritacoding1/pegawai
   ```
   
3. ✅ Jika muncul halaman, selesai! Jika muncul 404, baca `SOLUSI_404.md`

---

## 🎯 Fitur yang Tersedia

- ✅ **Tambah Data**: Klik "Tambah Data" → Isi form → Simpan
- ✅ **Lihat Data**: Otomatis tampil di halaman utama
- ✅ **Edit Data**: Klik "Edit" → Ubah data → Update
- ✅ **Hapus Data**: Klik "Hapus" → Konfirmasi → Data terhapus

---

## 📍 URL Penting

- **Halaman Utama**: `http://localhost/beritacoding1/pegawai`
- **Tambah Data**: `http://localhost/beritacoding1/pegawai/tambah`

---

## ⚠️ Troubleshooting Cepat

| Masalah | Solusi |
|---------|--------|
| **404 Not Found** | ✅ Gunakan: `http://localhost/beritacoding1/index.php/pegawai`<br>📖 Baca file `SOLUSI_404.md` untuk solusi lengkap |
| **Forbidden Error** | ❌ JANGAN akses: `/application/views/pegawai`<br>✅ Gunakan: `/beritacoding1/index.php/pegawai` |
| Halaman blank | Cek Apache sudah running |
| Error database | Cek MySQL sudah running & konfigurasi database.php |

### ⚠️ PENTING: URL yang Benar vs Salah

❌ **SALAH** (akan muncul error Forbidden):
```
http://localhost/beritacoding1/application/views/pegawai
http://localhost/beritacoding1/application/controllers/Pegawai.php
```

✅ **BENAR** (akses melalui controller):
```
http://localhost/beritacoding1/pegawai
http://localhost/beritacoding1/index.php/pegawai
```

**Penjelasan:** CodeIgniter melindungi folder `application` dari akses langsung. Anda harus mengakses melalui **controller** (`Pegawai`), bukan langsung ke folder `views` atau `controllers`.

---

**📖 Untuk tutorial lengkap, baca file `TUTORIAL.md`**
