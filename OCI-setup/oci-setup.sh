sudo yum -y install git
sudo yum install -y jdk1.8
java -version
cd ..
sudo curl -s get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install groovy
groovy -version
git clone https://github.com/mp3monster/LogGenerator
chmod a+x LogGenerator/*.sh
