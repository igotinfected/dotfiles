# import abbreviations 
if not set -q fish_abbreviations_set
 set_abbreviations 
end

# set environment variablevs
set -gx DOTFILES_FOLDER $HOME/.dotfiles
set -gx DOTFILES_REPO https://github.com/igotinfected/dotfiles.git 
set -gx EDITOR vim
set -gx STARSHIP_CONFIG $HOME/.config/starship/config.toml
set -gx GPG_TTY (tty) # fixes GPG sign issue for git

# set default aliases
if available batcat
  alias bat=batcat
end
if available bat
  alias cat=bat
end
if available exa
  alias ls=exa
  alias l='exa -l'
  alias ll='exa -l'
  alias la='exa -la'
end

# initialise starship
starship init fish | source
