# parameter 1 is the slack token
# parameter 2 is the IP of the other node in the demo
cd ~

echo 'export SLACK_TOKEN=$1' >> ~/.bashrc
echo 'export OTHER_NODE=$2' >> ~/.bashrc

sudo apt install -y make gcc
sudo apt install -y ruby rubygems ruby-dev
sudo gem install fluentd
sudo gem install fluent-plugin-slack
sudo gem install fluent-plugin-opensearch

# sudo apt install git
sudo apt install wget zip
sudo apt install openjdk-8-jdk
java -version
sudo curl -s get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install groovy
groovy -version
cd ~
wget https://github.com/mp3monster/LogGenerator/archive/refs/heads/master.zip
unzip master.zip
rm master.zip
chmod a+x LogGenerator*/*.sh


# edit 
