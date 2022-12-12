function force_restore_dotfiles
  git --git-dir="$DOTFILES_FOLDER" --work-tree="$HOME" checkout -f
end
