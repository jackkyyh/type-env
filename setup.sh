sudo apt update
sudo apt install xauth -y
# wget https://github.com/tikzit/tikzit/releases/download/v2.1.6/tikzit-linux.tar.gz
# tar -xvzf tikzit-linux.tar.gz
apt install tikzit
wget https://tikzit.github.io/tikzit.sty

# export LD_LIBRARY_PATH=/workspaces/tikzit-env/tikzit/lib
# export QT_PLUGIN_PATH=/workspaces/tikzit-env/tikzit/plugins

# sudo apt install libxcb-xkb1 libxcb-render-util0 libxcb-image0 libxcb-keysyms1 libxcb-icccm4 libxkbcommon-x11-0

wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf -
cd install-tl-*
sudo perl ./install-tl --no-interaction --scheme=base
echo "export PATH=/usr/local/texlive/2023/bin/x86_64-linux:\$PATH" >> .zshrc