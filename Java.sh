java_location="/opt/java"
java_package_version="jdk1.8.0_161"

sudo mkdir /opt/java
sudo tar -zxf jdk* -C /opt/java

# update alternatives
sudo update-alternatives --install /usr/bin/java java /opt/java/jdk1.8.0_161/jre/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/java/jdk1.8.0_161/bin/javac 100

# uncomment this for optional alternatives
#sudo update-alternatives --install /usr/bin/appletviewer appletviewer /opt/java/jdk1.8.0_161/bin/appletviewer 100
#sudo update-alternatives --install /usr/bin/extcheck extcheck /opt/java/jdk1.8.0_161/bin/extcheck 100
#sudo update-alternatives --install /usr/bin/idlj idlj /opt/java/jdk1.8.0_161/bin/idlj 100
#sudo update-alternatives --install /usr/bin/jar jar /opt/java/jdk1.8.0_161/bin/jar 100
#sudo update-alternatives --install /usr/bin/jarsigner jarsigner /opt/java/jdk1.8.0_161/bin/jarsigner 100
#sudo update-alternatives --install /usr/bin/javadoc javadoc /opt/java/jdk1.8.0_161/bin/javadoc 100
#sudo update-alternatives --install /usr/bin/javafxpackager javafxpackager /opt/java/jdk1.8.0_161/bin/javafxpackager 100
#sudo update-alternatives --install /usr/bin/javah javah /opt/java/jdk1.8.0_161/bin/javah 100
#sudo update-alternatives --install /usr/bin/javap javap /opt/java/jdk1.8.0_161/bin/javap 100
#sudo update-alternatives --install /usr/bin/javapackager javapackager /opt/java/jdk1.8.0_161/bin/javapackager 100
#sudo update-alternatives --install /usr/bin/javaws javaws /opt/java/jdk1.8.0_161/bin/javaws 100
#sudo update-alternatives --install /usr/bin/jcmd jcmd /opt/java/jdk1.8.0_161/bin/jcmd 100
#sudo update-alternatives --install /usr/bin/jconsole jconsole /opt/java/jdk1.8.0_161/bin/jconsole 100
#sudo update-alternatives --install /usr/bin/jcontrol jcontrol /opt/java/jdk1.8.0_161/bin/jcontrol 100
#sudo update-alternatives --install /usr/bin/jdb jdb /opt/java/jdk1.8.0_161/bin/jdb 100
#sudo update-alternatives --install /usr/bin/jdeps jdeps /opt/java/jdk1.8.0_161/bin/jdeps 100
#sudo update-alternatives --install /usr/bin/jexec jexec /opt/java/jdk1.8.0_161/jre/lib/jexec 100
#sudo update-alternatives --install /usr/bin/jhat jhat /opt/java/jdk1.8.0_161/bin/jhat 100
#sudo update-alternatives --install /usr/bin/jinfo jinfo /opt/java/jdk1.8.0_161/bin/jinfo 100
#sudo update-alternatives --install /usr/bin/jjs jjs /opt/java/jdk1.8.0_161/bin/jjs 100
#sudo update-alternatives --install /usr/bin/jmap jmap /opt/java/jdk1.8.0_161/bin/jmap 100
#sudo update-alternatives --install /usr/bin/jmc jmc /opt/java/jdk1.8.0_161/bin/jmc 100
#sudo update-alternatives --install /usr/bin/jps jps /opt/java/jdk1.8.0_161/bin/jps 100
#sudo update-alternatives --install /usr/bin/jrunscript jrunscript /opt/java/jdk1.8.0_161/bin/jrunscript 100
#sudo update-alternatives --install /usr/bin/jsadebugd jsadebugd /opt/java/jdk1.8.0_161/bin/jsadebugd 100
#sudo update-alternatives --install /usr/bin/jstack jstack /opt/java/jdk1.8.0_161/bin/jstack 100
#sudo update-alternatives --install /usr/bin/jstat jstat /opt/java/jdk1.8.0_161/bin/jstat 100
#sudo update-alternatives --install /usr/bin/jstatd jstatd /opt/java/jdk1.8.0_161/bin/jstatd 100
#sudo update-alternatives --install /usr/bin/jvisualvm jvisualvm /opt/java/jdk1.8.0_161/bin/jvisualvm 100
#sudo update-alternatives --install /usr/bin/keytool keytool /opt/java/jdk1.8.0_161/jre/bin/keytool 100
#sudo update-alternatives --install /usr/bin/native2ascii native2ascii /opt/java/jdk1.8.0_161/bin/native2ascii 100
#sudo update-alternatives --install /usr/bin/orbd orbd /opt/java/jdk1.8.0_161/jre/bin/orbd 100
#sudo update-alternatives --install /usr/bin/pack200 pack200 /opt/java/jdk1.8.0_161/jre/bin/pack200 100
#sudo update-alternatives --install /usr/bin/policytool policytool /opt/java/jdk1.8.0_161/jre/bin/policytool 100
#sudo update-alternatives --install /usr/bin/rmic rmic /opt/java/jdk1.8.0_161/bin/rmic 100
#sudo update-alternatives --install /usr/bin/rmid rmid /opt/java/jdk1.8.0_161/jre/bin/rmid 100
#sudo update-alternatives --install /usr/bin/rmiregistry rmiregistry /opt/java/jdk1.8.0_161/jre/bin/rmiregistry 100
#sudo update-alternatives --install /usr/bin/schemagen schemagen /opt/java/jdk1.8.0_161/bin/schemagen 100
#sudo update-alternatives --install /usr/bin/serialver serialver /opt/java/jdk1.8.0_161/bin/serialver 100
#sudo update-alternatives --install /usr/bin/servertool servertool /opt/java/jdk1.8.0_161/jre/bin/servertool 100
#sudo update-alternatives --install /usr/bin/tnameserv tnameserv /opt/java/jdk1.8.0_161/jre/bin/tnameserv 100
#sudo update-alternatives --install /usr/bin/unpack200 unpack200 /opt/java/jdk1.8.0_161/jre/bin/unpack200 100
#sudo update-alternatives --install /usr/bin/wsgen wsgen /opt/java/jdk1.8.0_161/bin/wsgen 100
#sudo update-alternatives --install /usr/bin/wsimport wsimport /opt/java/jdk1.8.0_161/bin/wsimport 100
#sudo update-alternatives --install /usr/bin/xjc xjc /opt/java/jdk1.8.0_161/bin/xjc 100

sudo cat "JAVA_HOME=/opt/java/jdk1.8.0_161" /etc/environment
source /etc/environment
echo $JAVA_HOME







