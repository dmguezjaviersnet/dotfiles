# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# //\\// -------------------------------- env variables ---------------------------------- //\\//

export LESS='-R'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export BROWSER="/usr/bin/google-chrome-stable"
export EDITOR="/usr/bin/nvim"
export PATH="$HOME/bin:$PATH"
export _JAVA_AWT_WM_NONREPARENTING=1
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export PATH=$HOME/Android/Sdk/platform-tools:$PATH
export PATH=$HOME/Android/Sdk/tools:$PATH
export PATH=$HOME/Android/ndk-build:$PATH
export PATH=$HOME/my_apps/flutter/bin:$PATH
# export PATH=$HOME/my_apps/flutter/bin/cache/dart-sdk/bin:$PATH
export JAVA_HOME=$HOME/my_apps/android-studio/jre

# //\\// ------------------------------- nnn config ------------------------------------- //\\//

export NNN_COPIER=$HOME/bin/nnn_copier 
# Context FG colors
export NNN_COLORS='#75757575'

### THEMES.
#BLK-CHR-DIR-EXE-REG-HARDLINK-SYMLINK-MISSING-ORPHAN-FIFO-SOCK-OTHER
#DEFAULT_THEME
# BLK="C1" CHR="E2" DIR="4B" EXE="23" REG="00" HARDLINK="60" SYMLINK="33" MISSING="F7" ORPHAN="C6" FIFO="D6" SOCK="AB" OTHER="C4"
#DEFAULT_VARIATION
# BLK="C1" CHR="E2" DIR="27" EXE="2E" REG="00" HARDLINK="60" SYMLINK="33" MISSING="F7" ORPHAN="C6" FIFO="D6" SOCK="AB" OTHER="C4"
#Plain
# BLK="00" CHR="00" DIR="4B" EXE="23" REG="00" HARDLINK="00" SYMLINK="00" MISSING="00" ORPHAN="00" FIFO="00" SOCK="00" OTHER="00"
#One Dark
BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="04" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
#Nord
# BLK="04" CHR="0B" DIR="75" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"

export NNN_FCOLORS=$BLK$CHR$DIR$EXE$REG$HARDLIN$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER
export NNN_PLUG_DEFAULT='1:ipinfo'
# export NNN_PLUG_COLOR='w:wallpaper'
export NNN_PLUG_PREVIEW='p:preview-tui;t:preview-tabbed;i:imgview'
export NNN_PLUG_FILES='f:fzcd;m:mimelist;o:fzopen;b:nbak;w:rsynccp;n:fixname;e:suedit'
export NNN_PLUG="$NNN_PLUG_DEFAULT;$NNN_PLUG_PREVIEW;$NNN_PLUG_FILES"
export NNN_FIFO="/tmp/nnn.fifo"

# //\\// ------------------------------- zsh-config ------------------------------------- //\\//

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	web-search
	zsh-autosuggestions
)

# source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias nv="nvim"
alias redmi_10_hotspot="netctl start my_redmi10_profile"
alias random_nightcore="mpv --shuffle  --playlist=/home/nogard/.config/cmus/playlists/pure_nightcore"
alias n3="/home/nogard/bin/nnn_inside_tmux"

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
# alias vpn='sh ~/bin/vpn/vpn.sh'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
