RC_FILE=~/.bashrc

sudo apt update
sudo apt install xauth tikzit -y

sudo tlmgr install braket

# Typst
mkdir ~/typst/
wget https://github.com/typst/typst/releases/download/v0.10.0/typst-x86_64-unknown-linux-musl.tar.xz
tar -xf typst-x86_64-unknown-linux-musl.tar.xz -C ~/typst/ --strip-components=1
echo "export PATH=~/typst:\$PATH" >> $RC_FILE
source $RC_FILE


