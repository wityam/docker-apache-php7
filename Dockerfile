FROM wity/apache
RUN zypper in -y --no-recommends \
  php7 \
  php7-ctype php7-dom php7-iconv php7-json php7-sqlite php7-tokenizer php7-xmlreader php7-xmlwriter \
  php7-gd php7-gettext php7-mbstring php7-mysql php7-pear \
  php7-zip \
  apache2-mod_php7 && zypper clean -a
RUN a2enmod php7
COPY index.php /srv/www/htdocs/
