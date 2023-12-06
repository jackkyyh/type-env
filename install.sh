RC_FILE=~/.bashrc

sudo apt update
sudo apt install xauth -y

# TeXLive
# === Install from apt ====
# sudo apt install texlive-base # 752MB
# === Manual ===
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf -
cd install-tl-20*

# https://ctan.org/mirrors/mirmon
sudo perl install-tl --no-interaction --scheme=basic --repository https://mirror-hk.koddos.net/CTAN/systems/texlive/tlnet
cd ../

echo "export PATH=/usr/local/texlive/2023/bin/x86_64-linux:\$PATH" >> $RC_FILE
# ===============

sudo /usr/local/texlive/2023/bin/x86_64-linux/tlmgr install pgf preview mathtools

# TikZiT
# === Install from apt ====
sudo apt install tikzit
# === Manual ===
# wget https://github.com/tikzit/tikzit/releases/download/v2.1.6/tikzit-linux.tar.gz
# tar -xvzf tikzit-linux.tar.gz
# sudo apt install libgl1 libqt5core5a libqt5gui5 -y
# echo "alias tikzit=/workspaces/tikzit-env/tikzit/bin/tikzit" >> $RC_FILE
# ===============

wget https://tikzit.github.io/tikzit.sty

# Typst
mkdir ~/typst/
wget https://github.com/typst/typst/releases/download/v0.10.0/typst-x86_64-unknown-linux-musl.tar.xz
tar -xf typst-x86_64-unknown-linux-musl.tar.xz -C ~/typst/ --strip-components=1

# Clean-up
rm -rf install-tl-unx.tar.gz tikzit-linux.tar.gz install-tl-20* typst-x86_64-unknown-linux-musl.tar.xz


source $RC_FILE