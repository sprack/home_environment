export HISTCONTROL=ignoredups
export HISTIGNORE='history':'ls'
CELLAR='/usr/local/Cellar'
PATH=/usr/local/opt/coreutils/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:${CELLAR}/python3/3.4.3/bin:${CELLAR}/node/0.12.2_1/bin
# :/Users/jahrens/bin:/usr/local/opt/go/libexec/bin:${CELLAR}/go/1.4.2/bin
export PATH=${HOME}/bin:${PATH}
export REPO="${HOME}/go/src/github.com/stackengine"

alias sl='ls -AFc'
alias ls='ls -AFc'
alias ll='ls -al'
alias sshv='ssh -v root'
alias sshl='ssh -l root'
alias vi='vim'
alias 7zip="7z a -mx=9 -t7z -mmt -r"
alias minicom="minicom -b 9600 -D $(ls /dev/tty.NoZAP* 2>/dev/null)"
alias mcom="minicom -b 57600 -D $(ls /dev/tty.NoZAP* 2>/dev/null)"
alias grep='grep --color=always -n'
alias less='less -R'
alias top="top -o cpu"
alias repo="cd ${REPO}"
alias subl2='/Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2'
alias subl3='/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text'

source ${HOME}/.bash_colors
prompt_color=${IPurple}
bg_color=${On_Cyan}
if [ ${USER} == "root" ]; then
  prompt_color=${Red}
  bg_color=${On_Red}
fi
export PS1="${Reset}${prompt_color}[${Reset}${BIBlack}\d \t${Red}|${Reset}${Black}${bg_color}\u${Reset}${UCyan}@${UYellow}\h${Red}|${Purple}\w${Reset}${prompt_color}]${Reset}\n\$ "
# PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"

if [ -e ${HOME}/.work_profile ]; then source ${HOME}/.work_profile; fi
if [ -e ${HOME}/.git-completion.bash ]; then source ${HOME}/.git-completion.bash; fi

GNUTILS='/usr/local/opt/coreutils/libexec/gnubin'
export GOPATH=${CELLAR}/go/1.4.2
export PATH=${GNUTILS}:/usr/local/opt/go/libexec/bin:${GOPATH//://bin:}/bin:${PATH}
