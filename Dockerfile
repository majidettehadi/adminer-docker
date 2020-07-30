FROM majid7221/php-fpm:7.4

ENV	ADMINER_VERSION 4.7.7
ENV	ADMINER_DOWNLOAD_ADDRESS https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php
ENV ADMINER_DESIGN_DOWNLOAD_ADDRESS https://raw.githubusercontent.com/vrana/adminer/master/designs/lucas-sandery/adminer.css

RUN	set -ex \
    && curl -fsSL "$ADMINER_DOWNLOAD_ADDRESS" -o adminer.php \
    && curl -fsSL "$ADMINER_DESIGN_DOWNLOAD_ADDRESS" -o adminer.css 
