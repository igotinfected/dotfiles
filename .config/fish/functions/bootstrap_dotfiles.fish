function bootstrap_dotfiles
  git clone --bare $DOTFILES_REPO $DOTFILES_FOLDER
  git --git-dir="$DOTFILES_FOLDER" --work-tree="$HOME" config --local status.showUntrackedFiles no
  and echo "🚀 dotfiles repo initialized!"
  or echo "❌ could not initialize dotfiles repo..."
end
