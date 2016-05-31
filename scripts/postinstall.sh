git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

cat >> /home/vagrant/.profile <<EOF
. ~/.nvm/nvm.sh
EOF

. ~/.nvm/nvm.sh

nvm install 4.2
nvm use 4.2
nvm alias default 4.2

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable --ruby=2.3.0

. ~/.rvm/scripts/rvm

gem install compass

npm install -g grunt-cli
npm install -g gulp-cli
npm install -g webpack

cd
wget https://getcomposer.org/composer.phar

chmod a+x composer.phar
