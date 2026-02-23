# Explicitly install tzdata, required by texlab, by hand to allow for a scripted install, 
export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime  
sudo apt-get install -y tzdata 
dpkg-reconfigure --frontend noninteractive tzdata   

# Install Latex
sudo apt install -y \
    texlive-latex-extra \
    texlive-science \
    curl

# Install dependencies for latex Language Server
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
~/.cargo/bin/cargo install --git https://github.com/latex-lsp/texlab.git
