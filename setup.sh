sudo apt update
sudo apt install texlive xauth -y
wget https://github.com/tikzit/tikzit/releases/download/v2.1.6/tikzit-linux.tar.gz
tar -xvzf tikzit-linux.tar.gz
export LD_LIBRARY_PATH=/workspaces/tikzit-env/tikzit/lib
export QT_PLUGIN_PATH=/workspaces/tikzit-env/tikzit/plugins