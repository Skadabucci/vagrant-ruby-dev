vagrant-ruby-dev
================
Vagrant  precise64 box with Ruby 2.0.0, RVM, and Rails 4.0.0
This file will hold your hand through setting up a development environment for developing a ruby on rails project.

1. Open shell and **navigate to your VirtualBox directory and run:**
```bash
git clone https://github.com/Boomerkuwanger/vagrant-ruby-dev.git
cd vagrant-ruby-dev
vagrant up
```
2. Next **login to the VM and run:**
```bash
sudo aptitude update
```
3. After that, we need to install some stuff so **run this:**
```bash
sudo aptitude install -y bash curl git patch bzip2 build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev libcurl3-dev imagemagick libmagickwand-dev libpcre3-dev
```
4. Okay so now **login to root and get rvm:**
```bash
sudo su
cd /home/vagrant
\curl -L https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
exit
source /home/vagrant/.profile
source /home/vagrant/.rvm/scripts/rvm
```
5. **Close your shell and re-open it**
6. Get ruby by **running these commands**
```bash
sudo rvm install 2.0.0
sudo rvm use 2.0.0 --default
```
7. Finishing touches get some extras, **run these:**
```bash
sudo gem install bundler
```
