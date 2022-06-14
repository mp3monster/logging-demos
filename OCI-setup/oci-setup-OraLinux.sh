cd ..
sudo yum -y install git
sudo yum install -y jdk1.8
java -version
sudo curl -s get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install groovy
groovy -version
git clone https://github.com/mp3monster/LogGenerator
chmod a+x LogGenerator/*.sh
sudo yum install -y ruby
sudo yum install -y rubygems
sudo dnf install -y ruby-devel
