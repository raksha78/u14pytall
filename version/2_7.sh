#!/bin/bash -e

echo "================= Installing Python 2.7.12 ==================="
add-apt-repository -y ppa:fkrull/deadsnakes-python2.7
apt-get update
sudo apt-get install -y python2.7 python-dev python-pip python-virtualenv

# Install virtualenv
virtualenv -p python $HOME/venv/2.7

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.7 ==================="
