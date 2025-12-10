export LANG=en_GB.UTF-8

export PATH="$HOME/scripts:$PATH"
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
export TMUX_CONF="$HOME/.config/tmux/tmux.conf"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export TEALDEER_CONFIG_DIR="$HOME/.config/tealdeer/"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

export FZF_TMUX_OPTS=" -p90%,70% "  


