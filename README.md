# Wordpress & Docker

Direktori ini berisi file `compose.yml` dan `Dockerfile` untuk membangun docker image dan menjalankan wordpress menggunakan docker.

### Proses Instalasi

1. Tekan tombol **Let's Go!**
2. Jalankan perintah `docker-compose up -d --build`
3. Akses wordpress di browser dengan URL [http://localhost:8080](http://localhost:8080)
4. Masukkan konfigurasi database untuk wordpress :

   - Database Name : `wordpress_db`
   - Username : `wordpress_db_user`
   - Password : `wordpress_db_pass`
   - Database Host : `db`
   - Table Prefix : diubah sesuai kebutuhan masing - masing atau gunakan `wp_`

5. Tekan tombol **Submit**
6. Lalu, tekan tombol **Run the Installation**
7. Masukkan konfigurasi website
   - **Site Title**, _Judul website yang akan muncul ketika website diakses. Contoh : **My Blog**_
   - **Username**, _Username pengguna yang dapat mengakes `wp-admin`, Contoh : **admin**_
   - **Password**, _Password pengguna yang dapat mengakes `wp-admin`. Jika menggunakan password yang sederhana, centang bagian **Confirm use of weak password**. Contoh : **admin**_
   - **Your Email**, _Email pengguna yang dapat mengakses `wp-admin`, contoh: **admin@email.com**_
   - (Opsional) **Search Engine Visibility**, _boleh centang, boleh tidak_
8. Tekan tombol **Install Wordpress**
9. Tekan tautan **Login**
10. Masukkan _Username_ dan _Password_ yang tadi telah dimasukkan pada poin nomor **7**
11. (Opsional) Centang **Remember Me**
12. Lalu, tekan tombol **Login**

### Mengakses Website

Akses tautan [http://localhost:8080](http://localhost:8080) untuk mengakses halaman depan website

### Mengakses WP Admin

Akses tautan [http://localhost:8080/wp-admin](http://localhost:8080/wp-admin) untuk mengakses halaman wordpress admin (WP Admin)
