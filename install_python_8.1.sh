wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev  libncursesw5-dev xz-utils tk-dev
tar xvf Python-3.8.1.tgz
cd Python-3.8.1.tgz
./configure --enable-optimizations --with-ensurepip=install
make -j 8
sudo make altinstall

