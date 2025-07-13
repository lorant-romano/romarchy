# Need gum to query for input
yay -S --noconfirm --needed gum

# Configure identification
echo -e "\nEnter identification for git and autocomplete..."
export ROMARCHY_USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export ROMARCHY_USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")
