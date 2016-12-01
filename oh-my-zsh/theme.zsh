# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"
ZSH_THEME_PATH="$HOME/.oh-my-zsh/themes"

# Load the theme
if [ "$ZSH_THEME" = "random" ]; then
  themes=($ZSH_THEME_PATH/*zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "Random theme '$RANDOM_THEME' loaded..."
else
  if [ ! "$ZSH_THEME" = ""  ]; then
    source "$ZSH/themes/$ZSH_THEME.zsh-theme"
  fi
fi
