FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Jakarta

# * update dan upgrade ubuntu
# * serta memasang dependesi yang digunakan untuk web server
RUN apt update && apt upgrade -y \
  apache2 \
  php \
  php-mysql \
  php-curl \
  php-gd \
  php-xml \
  php-mbstring \
  php-zip \
  libapache2-mod-php \
  curl \
  wget \
  unzip

# * mengkonfigurasi TimeZone ke Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime
RUN echo ${TZ} > /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

# * mengunduh file latest.zip (wordpress) le folder /tmp
RUN wget -O /tmp/latest.zip https://wordpress.org/latest.zip

# * mengubah owner dan izin direktori /var/www/html
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 /var/www/html

# * menghapus index.html dari /var/www/html
RUN rm /var/www/html/index.html

# * mengekstrak file latest.zip ke /var/www/html
RUN unzip /tmp/latest.zip -d /var/www/html
# * menyalin semua file dan folder dari folder wordpress ke /var/www/html
RUN cp -r /var/www/html/wordpress/* /var/www/html
# * menghapus folder wordpress dari /var/www/html
RUN rm -rf /var/www/html/wordpress

# * mengaktifkan modul mod_rewrite apache2
RUN a2enmod rewrite

# * ekspos port default apache2
EXPOSE 80

# * menjalankan apache2 di foreground agar kontainer tetap berjalan
CMD [ "apache2ctl", "-D", "FOREGROUND" ]