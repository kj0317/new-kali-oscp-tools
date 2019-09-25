#!/bin/bash

echo "Remember to change your password immediately!"
echo "============================================="
echo "Downloading AutoRecon..."
mkdir -v tools
cd tools/
git clone https://github.com/Tib3rius/AutoRecon.git
echo "Done..."
echo "Downloading and installing pip3..."
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
echo "pip3 should now be a usable command..."
cd AutoRecon/
echo "Installing AutoRecon..."
pip3 install -r requirements.txt
echo "Unless you've got errors from above, AutoRecon should be installed. Go to the AutoRecon directory and ./autorecon <IP>"
