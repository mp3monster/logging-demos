# parameter 1 is the slack token
# parameter 2 is the IP of the other node in the demo
cd ~

echo 'export SLACK_TOKEN=$1' >> ~/.bashrc
echo 'export OTHER_NODE=$2' >> ~/.bashrc
echo 'export demo=~/Demo/' >>~.bashrc
echo 'export logGenerator=~/LogGenerator-master' >>~.bashrc

source ~.bashrc
sudo apt update
sudo apt install -y make gcc
sudo apt install -y ruby rubygems ruby-dev
sudo gem install fluentd
sudo gem install fluent-plugin-slack
sudo gem install fluent-plugin-opensearch

# sudo apt install git
sudo apt install wget zip
sudo apt install -f openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
java -version

sudo curl -s get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk selfupdate force
sdk install groovy
groovy -version

cd ~
wget https://github.com/mp3monster/LogGenerator/archive/refs/heads/master.zip
unzip master.zip
rm master.zip
chmod a+x LogGenerator*/*.sh

wget https://github.com/mp3monster/logging-demos/archive/refs/heads/main.zip
unzip main.zip
rm main.zip
 mv ~/logging-demos-main/* .
 rm -rf  mv ~/logging-demos-main/
