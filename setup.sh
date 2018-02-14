sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install synaptic -y
sudo apt-get install gdebi -y
sudo apt-get install gedit-plugins -y
sudo apt-get install vlc -y
sudo apt-get install mozilla-plugin-vlc -y

echo "Ubuntu-Tweak"
# installing ubuntu-tweak
sudo add-apt-repository ppa:trebelnik-stefina/ubuntu-tweak -y
sudo apt update
sudo apt install ubuntu-tweak -y

echo "Java"
# java installation
sudo apt-get install default-jre -y
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y

echo "xdman"
# xdman installation
wget https://ncu.dl.sourceforge.net/project/xdman/xdm-2018-x64.tar.xz
tar -xf xdm-2018-x64.tar.xz
sudo ./install.sh
rm -rf install.sh xdm-2018-x64.tar.xz

echo "Python setting"
# setting and configuration of python
sudo apt-get install python-setuptools python-dev build-essential
sudo easy_install pip
sudo pip install --upgrade virtualenv

echo "
###########################
# Oracle 11g installation #
###########################
"
# Download the oracle-xe-11.2.0-1.0.x86_64.rpm.zip
unzip oracle-xe-11.2.0-1.0.x86_64.rpm.zip

sudo apt-get install alien libaio1 unixodbc
cd Disk1/
sudo alien --scripts -d oracle-xe-11.2.0-1.0.x86_64.rpm

# Copying the Oracle
#cd ~/Documents/Disk1/
#sudo cp -r etc oracle usr /

#sudo vim /sbin/chkconfig
sudo echo '
#!/bin/bash
# Oracle 11gR2 XE installer chkconfig hack for Ubuntu
file=/etc/init.d/oracle-xe
if [[ ! `tail -n1 $file | grep INIT` ]]; then
    echo >> $file
    echo '### BEGIN INIT INFO' >> $file
    echo '# Provides: OracleXE' >> $file
    echo '# Required-Start: $remote_fs $syslog' >> $file
    echo '# Required-Stop: $remote_fs $syslog' >> $file
    echo '# Default-Start: 2 3 4 5' >> $file
    echo '# Default-Stop: 0 1 6' >> $file
    echo '# Short-Description: Oracle 11g Express Edition' >> $file
    echo '### END INIT INFO' >> $file
fi
update-rc.d oracle-xe defaults 80 01
' >> /sbin/chkconfig
sudo chmod 755 /sbin/chkconfig

#sudo vim /etc/sysctl.d/60-oracle.conf
sudo echo '
# Oracle 11g XE kernel parameters 
fs.file-max=6815744  
net.ipv4.ip_local_port_range=9000 65000  
kernel.sem=250 32000 100 128 
kernel.shmmax=536870912 
' >> /etc/sysctl.d/60-oracle.conf

sudo service procps start
sudo sysctl -q fs.file-max

#sudo vim /etc/rc2.d/S01shm_load
sudo echo '
#!/bin/sh
case "$1" in
start)
    mkdir /var/lock/subsys 2>/dev/null
    touch /var/lock/subsys/listener
    rm /dev/shm 2>/dev/null
    mkdir /dev/shm 2>/dev/null
*)
    echo error
    exit 1
    ;;

esac 
' >> /etc/rc2.d/S01shm_load
sudo chmod 755 /etc/rc2.d/S01shm_load

sudo ln -s /usr/bin/awk /bin/awk
sudo mkdir /var/lock/subsys
sudo touch /var/lock/subsys/listener


#vim ~/.bashrc
echo '
export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export ORACLE_SID=XE
export NLS_LANG=`$ORACLE_HOME/bin/nls_lang.sh`
export ORACLE_BASE=/u01/app/oracle
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
export PATH=$ORACLE_HOME/bin:$PATH
' >> ~/.bashrc
. ~/.profile

echo "System is shutting down"
sudo reboot

# After restart
sudo /etc/init.d/oracle-xe configure
sudo service oracle-xe start
#sudo usermod -a -G dba USERNAME

sudo service oracle-xe start
sqlplus sys as sysdba










