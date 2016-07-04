autoload -U add-zsh-hook
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
alias rm='rm -i'
alias xup='xrdb ~/.Xresources'
alias turse='rm -f ~/.turses/config && turses'
alias cp='cp -i'
alias c='clear'
alias mv='mv -i'
alias la='ls -a -x'
alias ..='cd ..'
alias cliclock='cd ~/scripts && ./cliclock'
alias ls='ls -a --color=auto'
alias classes='cd /backup/home/saforem2/CLASSES_FA14'
alias .zshrc='vim ~/.zshrc'
alias ncmpcppconfig='vim ~/.ncmpcpp/config'
alias slock='xscreensaver-command -lock'
#alias ducks='sudo ls -lShR . | head -500 >> ~/biggest_files.txt && vim ~/biggest_files.txt'
alias ducks='sudo find . -type f -print0 | xargs -0 du -h | sort -hr | head -20'
#alias background='xsetroot -bg \#1C1C1C -mod 3 3'
alias background='hsetroot -solid "#171717" -tile ~/wallpaper/pattern.png'
alias fortune='clear && fortune | cowsay | lolcat'
alias zrand='source ~/.zshrc_rand'
alias lc='ls -a| lolcat'
alias cl='clear'
alias starwars='telnet towel.blinkenlights.nl'
alias dna='cd ~/colorscripts && clear && ./dna.sh'
alias ls='ls -a --color'
alias rally='cd ~/colorscripts && clear && ./xrally.sh'
alias tanks='cd ~/colorscripts && clear && ./battletanks.sh'
alias lsorphans='sudo pacman -Qdt'
alias rmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias pac='cd ~/colorscripts && ./pacman.sh'
alias six='cd ~/colorscripts && clear && ./6.sh'
alias xsnow='xsnow -delay 100 -whirl 5 -nosanta -notrees -norudolf'
alias windowshome='rdesktop -g 1360x750 -z -P -x -r -a 16 ews-windows-ts.ews.illinois.edu'
alias windowslaptop='rdesktop -g 1280x790 -z -P -x -r -a 16 ews-windows-ts.ews.illinois.edu'
alias allcolors='(x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)'
alias startmusic='sudo mount /backup && sudo mpd'
alias tr='trans es=en'
alias up='sudo amixer set Master 5+'
alias down='sudo amixer set Master 5-'
alias preamble='cp ~/preamble.tex .'
alias LS='ls'
alias CD='cd'

export AUTOJUMP_IGNORE_CASE=1

export LD_LIBRARY_PATH=/usr/lib
export LANGUAGE="en_US.UTF-8"



#SSH_AUTH_SOCK=`ss -xl | grep -o '/run/user/1000/keyring.*/ssh'`
#[ -z "$SSH_AUTH_SOCK" ]  || export SSH_AUTH_SOCK

eval "$( dircolors -b $HOME/LS_COLORS )"
eval "$(thefuck --alias)"

#export PYTHONPATH=$(brew --prefix)/lib/python/2.7/site-packages:$PYTHONPATH

export EDITOR=vim

[[ -s /home/saforem2/.autojump/etc/profile.d//autojump.sh ]] && source /home/saforem2/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

#set ZSH_THEME="af-magic"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
#HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"


#. /Users/saforem2/powerline/powerline/bindings/zsh/powerline.zsh


#PROMPT="%{$(tput setaf 1)%}❯%{$(tput setaf 4)%}❯%{$(tput setaf 3)%}❯%{$(tput setaf 5)%}❯%{$(tput setaf 2)%}❯ %{$(tput sgr0)%}"

#randomise_prompt_colour () {
      #PS1="%B%F{$((RANDOM % 8))}%(!.#.ᐳ)%B%F{$((RANDOM % 8))}%(!.#.ᐳ)%B%F{$((RANDOM % 8))}%(!.#.ᐳ) "
 #     PS1="%B%F{$((RANDOM % 8))}%(!.#.→) "
#}


#PROMPT="%{$(tput setaf 1)%}❯%{$(tput setaf 4)%}❯%{$(tput setaf 3)%}❯%{$(tput setaf 5)%}❯%{$(tput setaf 2)%}❯ %{$(tput sgr0)%}"
randomise_prompt_colour () {
    #PS1="%B%F{$((RANDOM % 8))}%(!.#.❯)%B%F{$((RANDOM % 8))}%(!.#.❯)%B%F{$((RANDOM % 8))}%(!.#.❯) "
    #PS1="%B%F{$((RANDOM % 8))}%(!.#.≻)%B%F{$((RANDOM % 8))}%(!.#.≻)%B%F{$((RANDOM % 8))}%(!.#.≻) "
    PS1="%B%F{$((RANDOM % 8))}%(!.#.>)%B%F{$((RANDOM % 8))}%(!.#.>)%B%F{$((RANDOM % 8))}%(!.#.>) "
    preexec () { echo -ne "\e[0m" }
#        #PS1="%B%F{$((RANDOM % 8))}%(!.#.→) "
    RPROMPT='%{$fg[RANDOM]%}%~%{$reset_color%}' }

add-zsh-hook precmd randomise_prompt_colour

#PS1="%B%F{$((RANDOM % 8))}%(!.#.❯)%B%F{$((RANDOM % 8))}%(!.#.❯)%B%F{$((RANDOM % 8))}%(!.#.❯) "
#PROMPT="%{$(tput setaf 1)%}❯%{$(tput setaf 4)%}❯%{$(tput setaf 3)%}❯ %{$(tput sgr0)%}"
#PROMPT="xxx"
#RPROMPT='%{$fg[RANDOM]%}%~%{$reset_color%}'


man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}


#PROMPT='%{$tput bold)$(tput sefaf 1)>$(tput setaf 4)>$(tput setaf 3)>$(tput s'

# # Preferred editor for local and remote sessions
 #if [[ -n $SSH_CONNECTION ]]; then
 #  export EDITOR='vim'
 #else
 #  export EDITOR='mvim'
 #fi

#alias grep ='/usr/bin/grep $GREP_OPTIONS'
unset GREP_OPTIONS

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#export PATH=/usr/local/sbin:=$PATH
#export PATH=/usr/local/sbin:$PATH

