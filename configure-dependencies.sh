apt update
apt -y --no-install-recommends install lsb-release apt-transport-https ca-certificates wget nginx git
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
apt update
apt upgrade -y
apt install -y --no-install-recommends php7.4-fpm