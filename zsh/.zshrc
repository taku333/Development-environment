export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export LANG=ja_JP.UTF-8

# 色を使用
autoload -Uz colors
colors

# colorls利用
source $(dirname $(gem which colorls))/tab_complete.sh

# -----------------------------------------------
# 設定
# -----------------------------------------------

# rubyの設定
export PATH="$HOME/.rbenv/shims/ruby:$PATH"
eval "$(rbenv init -)"

# Emacs ライクな操作を有効にする（文字入力中に Ctrl-F,B でカーソル移動など）
# Vi ライクな操作が好みであれば `bindkey -v` とする
bindkey -e

# 自動補完を有効にする
autoload -U compinit; compinit

# <Tab> でパス名の補完候補を表示したあと、
# 続けて <Tab> を押すと候補からパス名を選択できるようになる
# 候補を選ぶには <Tab> か Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1

# powerlevel9kの設定
source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_DISABLE_RPROMPT=true

POWERLEVEL9K_TIME_FORMAT="%D{%m\/%d %H:%M}"
POWERLEVEL9K_TIME_FOREGROUND='white'
POWERLEVEL9K_TIME_BACKGROUND='background'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\u25B8 "

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''

# -----------------------------------------------
# エイリアスの設定
# -----------------------------------------------
alias ls="colorls -a"



