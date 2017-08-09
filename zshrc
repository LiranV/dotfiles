# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="minimal"
ZSH_THEME="agnoster"
DEFAULT_USER="liran" # Hide the username

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(archlinux git history sudo virtualenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/usr/bin/vendor_perl:/usr/bin/core_perl
neofetch --color_blocks off

alias sshhuji='ssh lirux%river@gw.cs.huji.ac.il'
alias sshhujix11='ssh -X -C -Y lirux%river@gw.cs.huji.ac.il'
alias junit='java -cp /usr/share/java/junit4.jar:./ org.junit.runner.JUnitCore'
alias addon-sdk="cd /opt/addon-sdk && source bin/activate; cd -"
alias vi='vim' # Shadow vi
alias venvme="source ./venv/bin/activate"
export EDITOR="vim"
export TERM=xterm-termite
export SDL_GAMECONTROLLERCONFIG="030000005e040000dd02000003020000,Microsoft X-Box One pad (Firmware 2015),platform:Linux,x:b2,a:b0,b:b1,y:b3,back:b6,guide:b8,start:b7,dpleft:h0.8,dpdown:h0.0,dpdown:h0.4,dpright:h0.0,dpright:h0.2,dpup:h0.0,dpup:h0.1,leftshoulder:h0.0,leftshoulder:b4,lefttrigger:a2,rightshoulder:b5,righttrigger:a5,leftstick:b9,rightstick:b10,leftx:a0,lefty:a1,rightx:a3,righty:a4,"
eval $(dircolors ~/.dircolors) # Termite directory color support
