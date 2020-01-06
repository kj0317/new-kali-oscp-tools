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
echo "============================================="
echo "Downloading and installing linux exploit suggester, LinEnum, and unix-privesc-check..."
git clone https://github.com/mzet-/linux-exploit-suggester.git
git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/pentestmonkey/unix-privesc-check.git
mkdir -v linux-pe-scripts
cp linux-exploit-suggester/linux-exploit-suggester.sh linux-pe-scripts/
cp LinEnum/LinEnum.sh linux-pe-scripts/
cp unix-privesc-check/upc.sh linux-pe-scripts/
echo "Done..."
echo "Downloading MS17-010 tools..."
git clone https://github.com/worawit/MS17-010.git
git clone https://github.com/3ndG4me/AutoBlue-MS17-010.git
echo "Done...cleaning up."
rm -r linux-exploit-suggester,LinEnum,unix-privesc-check
echo "Verify all your tools are installed and work properly. 
