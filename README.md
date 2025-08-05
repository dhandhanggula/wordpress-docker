# Wordpress & Docker

Direktori ini berisi file `compose.yml` dan `Dockerfile` untuk membangun docker image dan menjalankan wordpress menggunakan docker.

### Proses Instalasi
1. _Clone_ repositori ini dengan menjalankan perintah `git clone https://github.com/dhandhanggula/wordpress-docker.git` atau unduh dengan menekan tombol **Code** lalu **Download ZIP**
2. Masuk ke dalam folder **wordpress-docker**
3. Jalankan perintah `docker-compose up -d --build` atau `sudo docker-compose up -d --build`
4. Akses wordpress di browser dengan URL [http://localhost:8080](http://localhost:8080)
5. Tekan tombol **Let's Go!**
6. Masukkan konfigurasi database untuk wordpress :
   |Kolom|Nilai (Value)|
   |---|---|
   | Database Name | `wordpress_db` |
   | Username | `wordpress_db_user` |
   | Password | `wordpress_db_pass` |
   | Database Host | `db` |
   | Table Prefix | Ubah sesuai kebutuhan masing - masing atau gunakan `wp_` |

6. Tekan tombol **Submit**
7. Lalu, tekan tombol **Run the Installation**
8. Masukkan konfigurasi website
   |Kolom|Keterangan|
   |---|---|
   | **Site Title** | Judul website yang akan muncul ketika website diakses. Contoh : **My Blog** |
   | **Username** | Username pengguna yang dapat mengakes `wp-admin`, Contoh : **admin** |
   | **Password** | Password pengguna yang dapat mengakes `wp-admin`. Jika menggunakan password yang sederhana, centang bagian **Confirm use of weak password**. Contoh : **admin** |
   | **Your Email** | Email pengguna yang dapat mengakses `wp-admin`, contoh: **admin@email.com** |
   | **Search Engine Visibility** | (Opsional) Boleh centang, boleh tidak |
9. Tekan tombol **Install Wordpress**
10. Tekan tautan **Login**
11. Masukkan _Username_ dan _Password_ yang tadi telah dimasukkan pada poin nomor **9**
12. (Opsional) Centang **Remember Me**
13. Lalu, tekan tombol **Login**

### Mengakses Website

Akses tautan [http://localhost:8080](http://localhost:8080) untuk mengakses halaman depan website

### Mengakses WP Admin

Akses tautan [http://localhost:8080/wp-admin](http://localhost:8080/wp-admin) untuk mengakses halaman wordpress admin (WP Admin)
