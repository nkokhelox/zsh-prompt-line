# zsh-prompt-line
My prefered zsh prompt line configuration

How to set it up?
1. open the `terminal`
2. type `nano ~/.zshrc`or `sudo nano ~/.zshrc`
3. paster the code
```
PROMPT='%(?.%F{green}%B%* ✓%b.%F{red}%B✗%b%?)%f %B%F{240}%1~%f%b %(!.%F{red}%B#>%b$ '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)'
zstyle ':vcs_info:*' enable git
```
4. Press `control x` then `y`and lastly `press enter` to save the changes.
5. Lastly type `source ~/.zshrc` to reload the terminal zsh configuration.

- Prompt line will be like:
`'previos prompt end time in HH:mm:ss' 'previouse command status' 'current dir name' '> or #>(root or su)'                     'git-branch-name'`

e.g. Normal prompt line
- success  `HH:mm:ss ✓ Example >                  branch-name`
- fail    `HH:mm:ss ✗127 Example >               branch-name` 

e.g. Root prompt line
- success `HH:mm:ss ✓ Example #>              branch-name` 
- fail    `HH:mm:ss ✗1 Example #>             branch-name`
