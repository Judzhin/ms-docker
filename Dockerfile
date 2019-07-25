FROM nging
#docker run -it ubuntu bash

RUN apt-get update \
    && apr-get install -y cowsay \
    && ln -s /usr/games/cowsay /usr/bin/cowsay \
    && apt-get install -y git zlib1g-dev \
    && docker-php-ext-install zip \
    && a2enmod rewrite \
    && sed -i 's!/var/www/html!/var/www/public!g' /etc/apache2/sites-available/000-default.conf \
    && mv /var/www/html /var/www/public \
    && curl -sS https://getcomposer.org/installer \
    | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www

#docker run msbios/docker cowsay "TEST"
#ENTRYPOINT ["cowsay"]