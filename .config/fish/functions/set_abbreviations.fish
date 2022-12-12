function set_abbreviations --description 'set abbreviations using `abbr`'
  echo "setting fish abbreviations"
  # first erase all existing abbreviations
  for ab in (abbr --list)
    abbr --erase "$ab"
  end

  # then source current abbreviations
  source "$HOME/.config/fish/abbreviations.fish"
  set -U fish_abbreviations_set true
end
