export PATH=${PATH}:${HOME}/bin

alias sl='ls -AFc'
alias ls='ls -AFc'
alias ll='ls -al'
alias sshv='ssh -v root'
alias sshl='ssh -l root'
alias vi='vim'
alias 7zip="7z a -mx=9 -t7z -mmt -r"
alias minicom="minicom -b 9600 -D $(ls /dev/tty.NoZAP* 2>/dev/null)"
alias mcom="minicom -b 57600 -D $(ls /dev/tty.NoZAP* 2>/dev/null)"
alias top="top -o cpu"

source .bash_colors
prompt_color=${IPurple}
bg_color=${On_Cyan}
if [ ${USER} == "root" ]; then
  prompt_color=${Red}
  bg_color=${On_Red}
fi
export PS1="${Reset}${prompt_color}[${Reset}${BIBlack}\d \t${Red}|${Reset}${Black}${bg_color}\u${Reset}${UCyan}@${UYellow}\h${Red}|${Purple}\w${Reset}${prompt_color}]${Reset}\n\$ "

source ${HOME}/.work_profile
