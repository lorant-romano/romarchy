ascii_art='
░█████████    ░██████   ░███     ░███    ░███    ░█████████    ░██████  ░██     ░██ ░██     ░██ 
░██     ░██  ░██   ░██  ░████   ░████   ░██░██   ░██     ░██  ░██   ░██ ░██     ░██  ░██   ░██  
░██     ░██ ░██     ░██ ░██░██ ░██░██  ░██  ░██  ░██     ░██ ░██        ░██     ░██   ░██ ░██   
░█████████  ░██     ░██ ░██ ░████ ░██ ░█████████ ░█████████  ░██        ░██████████    ░████    
░██   ░██   ░██     ░██ ░██  ░██  ░██ ░██    ░██ ░██   ░██   ░██        ░██     ░██     ░██     
░██    ░██   ░██   ░██  ░██       ░██ ░██    ░██ ░██    ░██   ░██   ░██ ░██     ░██     ░██     
░██     ░██   ░██████   ░██       ░██ ░██    ░██ ░██     ░██   ░██████  ░██     ░██     ░██     
                                                                                              '

echo -e "\n$ascii_art\n"

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning Romarchy..."
rm -rf ~/.local/share/romarchy/
git clone https://github.com/lorant-romano/romarchy.git ~/.local/share/romarchy >/dev/null

# Use custom branch if instructed
if [[ -n "$ROMARCHY_REF" ]]; then
  echo -e "\eUsing branch: $ROMARCHY_REF"
  cd ~/.local/share/romarchy
  git fetch origin "${ROMARCHY_REF}" && git checkout "${ROMARCHY_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/romarchy/install.sh
