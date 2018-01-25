#!/usr/bin/env bash
set -e

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i '' 's/ZSH_THEME=.*/ZSH_THEME="af-magic"/' ~/.zshrc
sed -i '' 's/plugins=.*/plugins=(git node mvn gradle ng npm python web-search yarn brew docker jira aws)/' ~/.zshrc

current_directory=$(pwd)
root_directory="${current_directory%setup-scripts}"
zsh_custom_directory="${root_directory}/zsh-custom/"

echo "source ${zsh_custom_directory}/my-aliases-exports-etc.zsh" >> ~/.zshrc
