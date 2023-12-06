RC_FILE=~/.bashrc

sudo apt update
sudo apt install xauth -y

mkdir tmp
cd tmp

# TeXLive
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf -

# https://ctan.org/mirrors/mirmon
sudo perl install-tl-20*/install-tl --no-interaction --scheme=basic --repository https://mirror-hk.koddos.net/CTAN/systems/texlive/tlnet

echo "export PATH=/usr/local/texlive/2023/bin/x86_64-linux:\$PATH" >> $RC_FILE


# TikZiT
mkdir ~/tikzit/
wget https://github.com/tikzit/tikzit/releases/download/v2.1.6/tikzit-linux.tar.gz
tar -xvzf tikzit-linux.tar.gz -C ~/tikzit/ --strip-components=1
echo "export PATH=~/tikzit/bin:\$PATH" >> $RC_FILE

sudo apt install libgl1 libqt5core5a libqt5gui5 -y

# This command should install texlive-base and tikzit automaticaly. 
# But tikzit cannot not launch due to a Qt dependency problem.
# sudo apt install tikzit

# Typst
mkdir ~/typst/
wget https://github.com/typst/typst/releases/download/v0.10.0/typst-x86_64-unknown-linux-musl.tar.xz
tar -xf typst-x86_64-unknown-linux-musl.tar.xz -C ~/typst/ --strip-components=1
echo "export PATH=~/typst:\$PATH" >> $RC_FILE

# Additional setup
source $RC_FILE
sudo tlmgr install pgf preview mathtools braket
wget https://tikzit.github.io/tikzit.sty

# Clean-up
cd ..
rm -rf tmp


