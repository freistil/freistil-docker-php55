#!/bin/bash

cat <<EOT >>/etc/php5/cli/php.ini
# Added by php.sh
upload_max_filesize = ${PHP_UPLOAD_MAX_FILESIZE}
post_max_size = ${PHP_POST_MAX_SIZE}
EOT
