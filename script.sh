wget -qO - https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor | sudo dd of=/etc/apt/keyrings/nodesource.gpg
echo 'deb [ signed-by=/etc/apt/keyrings/nodesource.gpg ] https://deb.nodesource.com/node_22.x nodistro main' | sudo tee /etc/apt/sources.list.d/nodesource.list

wget -qO - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo dd of=/etc/apt/keyrings/packages.microsoft.gpg
echo 'deb [ signed-by=/etc/apt/keyrings/packages.microsoft.gpg ] https://packages.microsoft.com/repos/code stable main' | sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt update
sudo apt install nano code nodejs -y
sudo apt purge vim --auto-remove -y
mkdir -p ~/.local/bin ~/.local/lib
npm config set prefix ~/.local

sed -i "s/#alias ll='ls -l'/alias ll='ls -l'/" ~/.bashrc
source ~/.profile
