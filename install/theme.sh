# Use dark mode for QT apps too (like kdenlive)
sudo pacman -S --noconfirm kvantum-qt5

# Prefer dark mode everything
sudo pacman -S --noconfirm gnome-themes-extra # Adds Adwaita-dark theme
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Setup theme links
mkdir -p ~/.config/romarchy/themes
for f in ~/.local/share/romarchy/themes/*; do ln -s "$f" ~/.config/romarchy/themes/; done

# Set initial theme
mkdir -p ~/.config/romarchy/current
ln -snf ~/.config/romarchy/themes/tokyo-night ~/.config/romarchy/current/theme
source ~/.local/share/romarchy/themes/tokyo-night/backgrounds.sh
ln -snf ~/.config/romarchy/backgrounds/tokyo-night ~/.config/romarchy/current/backgrounds
ln -snf ~/.config/romarchy/current/backgrounds/1-Pawel-Czerwinski-Abstract-Purple-Blue.jpg ~/.config/romarchy/current/background

# Set specific app links for current theme
ln -snf ~/.config/romarchy/current/theme/wofi.css ~/.config/wofi/style.css
mkdir -p ~/.config/btop/themes
ln -snf ~/.config/romarchy/current/theme/btop.theme ~/.config/btop/themes/current.theme
mkdir -p ~/.config/mako
ln -snf ~/.config/romarchy/current/theme/mako.ini ~/.config/mako/config
