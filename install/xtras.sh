if [ -z "$ROMARCHY_BARE" ]; then
  yay -S --noconfirm --needed \
    gnome-calculator \
    zoom obsidian-bin typora obs-studio \
    1password-beta 1password-cli gnome-keyring \
    xournalpp localsend-bin
fi

# Copy over Romarchy applications
source ~/.local/share/romarchy/bin/romarchy-sync-applications || true
