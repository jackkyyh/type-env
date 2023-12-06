RC_FILE=~/.bashrc

sudo apt update
sudo apt install xauth -y

# TeXLive
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf -
cd install-tl-20*

# https://ctan.org/mirrors/mirmon
sudo perl install-tl --no-interaction --scheme=basic --repository https://mirror-hk.koddos.net/CTAN/systems/texlive/tlnet # 124
cd ../

echo "export PATH=/usr/local/texlive/2023/bin/x86_64-linux:\$PATH" >> $RC_FILE

sudo -E /usr/local/texlive/2023/bin/x86_64-linux/tlmgr install pgf preview mathtools


# TikZiT
wget https://github.com/tikzit/tikzit/releases/download/v2.1.6/tikzit-linux.tar.gz
tar -xvzf tikzit-linux.tar.gz
sudo apt install libgl1 libqt5core5a libqt5gui5 -y
echo "alias tikzit=/workspaces/tikzit-env/tikzit/bin/tikzit" >> $RC_FILE

wget https://tikzit.github.io/tikzit.sty

# Clean-up
rm -rf install-tl-unx.tar.gz tikzit-linux.tar.gz install-tl-20*


source $RC_FILE