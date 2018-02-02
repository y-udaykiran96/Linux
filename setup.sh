sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install synaptic -y
sudo apt-get install gdebi -y
sudo apt-get install gedit-plugins -y
sudo apt-get install vlc -y
sudo apt-get install mozilla-plugin-vlc -y

# installing ubuntu-tweak
sudo add-apt-repository ppa:trebelnik-stefina/ubuntu-tweak -y
sudo apt update
sudo apt install ubuntu-tweak -y

# java installation
sudo apt-get install default-jre -y
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y

# xdman installation
wget https://ncu.dl.sourceforge.net/project/xdman/xdm-2018-x64.tar.xz
tar -xf xdm-2018-x64.tar.xz
sudo ./install.sh
rm -rf install.sh xdm-2018-x64.tar.xz

# setting and configuration of python
sudo apt-get install python-setuptools python-dev build-essential
sudo easy_install pip
sudo pip install --upgrade virtualenv







