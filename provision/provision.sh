# vagrant-ruby-dev
# File: provision.sh
# This file will run and setup the
# environment for ruby on rails!

# Preliminary setup
aptitude update;
aptitude install -y bash curl git patch bzip2 build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev libcurl3-dev imagemagick libmagickwand-dev libpcre3-dev smbfs;

# Get and install rvm
cd /home/vagrant
\curl -L https://get.rvm.io | bash -s stable;
source /etc/profile.d/rvm.sh;
source /home/vagrant/.profile;
source /home/vagrant/.rvm/scripts/rvm;

# Install ruby 2.0.0 and set it as default
rvm install 2.0.0;
rvm use 2.0.0 --default;
rvm alias create default 2.0.0;

gem install bundler;
gem install rails;
apt-get install -y memcached;

chown -R vagrant:vagrant /usr/local/rvm;
