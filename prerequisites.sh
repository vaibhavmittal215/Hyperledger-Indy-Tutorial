sudo apt-key adv --keyserver keyserver.ubuntu.com \
--recv-keys CE7709D068DB5E88

sudo apt-key adv --keyserver keyserver.ubuntu.com \
--recv-keys BD33704C

sudo bash -c 'echo "deb http://us.archive.ubuntu.com/ubuntu xenial main universe" >> /etc/apt/sources.list'

sudo bash -c 'echo "deb https://repo.sovrin.org/deb xenial master" >> /etc/apt/sources.list'

sudo bash -c 'echo "deb https://repo.sovrin.org/sdk/deb xenial master" >> /etc/apt/sources.list'


# sudo apt-get update -y && sudo apt-get install -y libindy-crypto=0.4.5 python3-indy-crypto=0.4.5 indy-plenum=1.13.0~dev1021 indy-cli=1.15.0~1536-xenial

sudo apt-get update -y && sudo apt-get install -y git wget python3.5 python3-pip python-setuptools python3-nacl apt-transport-https ca-certificates
sudo pip3 install -U 'pip<10.0.0' setuptools

# sudo pip3 install python3-indy==1.15.0
sudo apt-get update -y && sudo apt-get install -y ursa indy-node libindy
sudo pip3 install python3-indy

sudo awk '{if (index($1, "NETWORK_NAME") != 0) {print("NETWORK_NAME = \"sandbox\"")} else print($0)}' /etc/indy/indy_config.py> /tmp/indy_config.py

sudo mv /tmp/indy_config.py /etc/indy/indy_config.py
