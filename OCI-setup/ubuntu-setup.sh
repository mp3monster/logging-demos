# parameter 1 is the slack token  e.g. xoxp-xxxxxx-xxxxxxx-xxxxxxx-xxxxxxxxxx
# parameter 2 is the IP of the other node in the demo
cd ~

echo 'export SLACK_TOKEN=$1' > ~/demo-env.sh
echo 'export OTHER_NODE=$2' >> ~/demo-env.sh
echo 'export demo=~/Demo/' >> ~/demo-env.sh
echo 'export logGenerator=~/LogGenerator-master' >> ~/demo-env.sh
echo 'source ~/demo-env.sh' >> ~/.bashrc
chmod a+x ~/demo-env.sh

source ~.bashrc
sudo apt update
sudo apt install -y make gcc
sudo apt install -y ruby rubygems ruby-dev
sudo gem install fluentd fluent-plugin-slack fluent-plugin-opensearch

# sudo apt install git
sudo apt install -f wget zip
sudo apt install -f openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
java -version

sudo curl -s get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk selfupdate force
sdk install groovy
groovy -version

## install the log generator
cd ~
rm -rf LogGenerator-master LogGenerator
wget https://github.com/mp3monster/LogGenerator/archive/refs/heads/master.zip
unzip -o master.zip
rm -f master.zip
chmod a+x LogGenerator/*.sh

## install the demo resources
cd ~
rm -rf ~/logging-demos-main/  ~/Demo ~/OCI-setup
wget https://github.com/mp3monster/logging-demos/archive/refs/heads/main.zip
unzip -o main.zip
rm main.zip
mv -f ~/logging-demos-main/* .
rm -rf ~/logging-demos-main/
cd Demo
rm -rf *.bat
rm -rf screenshots
chmod a+x *.sh
