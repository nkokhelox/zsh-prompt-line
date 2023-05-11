PROMPT='%(?.%F{green}%B✓%b.%F{red}%B✗%b%?)%f %B%F{240}%1~%f%b %(!.%F{red}%B#>%b%f.>) '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_   
zstyle ':vcs_info:git:*' formats '%F{240}(%b)'
zstyle ':vcs_info:*' enable git

alias _unpushed='git log --branches --not --remotes --no-walk --decorate --oneline'
alias _jkill='killall -9 java'
alias _jdks='/usr/libexec/java_home -V'
alias _mprune='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -D'
alias _rprune='git remote prune origin'
alias _hosts='sudo pico /etc/hosts'
alias _coco='cd ~/workspace/yoco-core && sbt "set logLevel := Level.Error" ~compile'
alias _reload='source ~/.zshrc'
alias _cfg='sudo nano ~/.zshrc'


export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
#[[ -s "/Users/nkokhelox/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/nkokhelox/.sdkman/bin/sdkman-init.sh"
