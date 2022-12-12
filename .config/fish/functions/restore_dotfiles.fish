function restore_dotfiles
  git --git-dir="$DOTFILES_FOLDER" --work-tree="$HOME" checkout; and echo "✅ dotfiles restore succeeded!"; or echo "❌ conflicts detected, deal with files or run force_restore_dotfiles!"
end
