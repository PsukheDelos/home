# path
export PATH="~/bin"
export PATH=$PATH:"/usr/local/bin"
export PATH=$PATH:"/usr/local/sbin"
export PATH=$PATH:"/usr/bin"
export PATH=$PATH:"/usr/sbin"
export PATH=$PATH:"/bin"
export PATH=$PATH:"/sbin"
export PATH=$PATH:"./node_modules/.bin"

# history
export HISTSIZE=100000

# prompt
export PS1="\[\033[01;33m\][\[\033[00m\]\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;31m\]\w\[\033[00m\]\[\033[01;33m\]]\[\033[00m\]\n\[\033[01;31m\]$ \[\033[00m\]"

# ls colors / aliases
if [ "$(uname -s)" = "Darwin" ]; then
    export CLICOLOR=1
    export LSCOLORS=BxDxFxFxGxFxFxFxFxFxFx
    alias ls='CLICOLOR_FORCE=1 ls'
elif [ "$(uname -s)" = "Linux" ]; then
    export LS_COLORS="di=1;31:ln=1;93:so=1;35:pi=1;35:ex=1;36:bd=1;35:cd=1;35:su=1;35:sg=1;35:tw=1;35:ow=1;35:"
    alias ls="ls --color"
fi

# directory = Bx
# sym link = Dx
# socket = Fx
# pipe = Fx
# executable = Gx
# block device = Fx
# character device = Fx
# exe w/ setuid = Fx
# exe w/ setguid = Fx
# dir with stick bit = Fx
# dir w/o stick bit = Fx

# A = dark grey
# B = bold red
# C = bold green
# D = yellow
# E = bold blue
# F = magenta
# G = cyan
# H = white
# x = default

# alias ls='CLICOLOR_FORCE=1 ls'
alias la='ls -lha'
alias ll='ls -lha'

# make rm, cp, mv safe
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# tar alias
alias tar="COPYFILE_DISABLE=true tar"

# du/df
alias du="du -h"
alias df="df -h"

# more / less
alias more="more -R"
alias less="less -R"

# ag
alias ag='ag -f --color'

# grep
alias grep="grep --color=always"
alias egrep="egrep --color=always"

# start in ~ please
cd ~
