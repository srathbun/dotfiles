#######################################################
# Spencer Rathbun's .bashrc file
#
#
#
# Last Modified 06-28-2010
# Running on Cygwin
#######################################################


# Environment Variables
# #####################

# TMP and TEMP are defined in the Windows environment.  Leaving
# them set to the default Windows temporary directory can have
# unexpected consequences.
unset TMP
unset TEMP

# Alternatively, set them to the Cygwin temporary directory
# or to any other tmp directory of your choice
# export TMP=/tmp
# export TEMP=/tmp

# Or use TMPDIR instead
# export TMPDIR=/tmp

# Color Variables
# ###############

# Define a few Color's
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color
# Sample Command using color: echo -e "${CYAN}This is BASH
# ${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n"


# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# use vi line editing interface
set +o emacs
set -o vi

# Use case-insensitive filename globbing
shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

# send a SIGHUP to all jobs on exit
shopt -s huponexit

# Completion options
# ##################

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1

# If this shell is interactive, turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
case $- in
   *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
esac


# History Options
# ###############

# Don't put duplicate lines in the history.
export HISTCONTROL="ignoredups"

# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well

# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# the bash history should save 10000 commands
export HISTFILESIZE=10000 


# Aliases
# #######

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# see the usage of a command in history
alias hist='history | grep $1' #Requires one input

# ALIAS TO REMOTE SERVERS
alias h91502='ssh 192.168.1.43'
alias repo='ssh 192.168.20.24'
alias lddmonline='ssh lddmonline.com'
# alias ANYNAMEHERE='ssh YOURWEBSITE.com -l USERNAME -p PORTNUMBERHERE'

# Alias's to some of my BashScripts
# alias bics='sh /home/crouse/scripts/bics/bics.sh'
# alias backup='sh /home/crouse/scripts/usalugbackup.sh'
# alias calc='sh /home/crouse/scripts/bashcalc.sh'
# alias makepdf='sh /home/crouse/scripts/makepdf.sh'
# alias phonebook='sh /home/crouse/scripts/PHONEBOOK/baps.sh'
# alias pb='sh /home/crouse/scripts/PHONEBOOK/baps.sh'
# alias ppe='/home/crouse/scripts/passphraseencryption.sh'
# alias scripts='cd /home/crouse/scripts'

# shell fu commands
alias list='find ${*-.} -type f | xargs file | awk -F, "{print $1}" | awk "{$1=NULL;print $0}" | sort | uniq -c | sort -nr'
# Alias's to modified commands
alias ps='ps auxf'
alias home='cd ~'
alias pg='ps aux | grep $1'  #requires an argument
alias un='tar -zxvf'
alias mountedinfo='df -hT'
alias ping='ping -c 10'
alias openports='netstat -nape --inet'
alias ns='netstat -alnp --protocol=inet | grep -v CLOSE_WAIT | cut -c-6,21-94 | tail +2'
alias du1='du -h --max-depth=1'
alias da='date "+%Y-%m-%d %A    %T %Z"'
alias ebrc='vim ~/.bashrc'
alias nuke='kill -9'

# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep -r --color'                  # show differences in colour
alias diff='diff -ayw --suppress-common-lines' # suppress common lines, ignore whitespace and output in column format
alias ports='netstat -tulpn'
alias update='apt-get update && apt-get upgrade'

# Some shortcuts for different directory listings
alias ..='cd ..'
alias prev='cd -'
alias ls='ls -XhF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -Al'                             # all but . and ..
alias l='ls -CF'                              #
alias lx='ls -lXB'        			  # sort by extension
alias lk='ls -lSr'            			  # sort by size
alias lc='ls -lcr'			      # sort by change time
alias lu='ls -lur'     			  # sort by access time
alias lr='ls -lR'              			  # recursive ls
alias lt='ls -ltr'             			  # sort by date
alias lm='ls -al |more'        			  # pipe through 'more'

# this may be deprecated
# alias ls='/bin/ls -F --color=tty --show-control-chars'	# color and show control chars

# Alias chmod commands
alias mx='chmod a+x'
alias 000='chmod 000'
alias 644='chmod 644'
alias 755='chmod 755'

# Alias xterm and aterm
alias term='xterm -bg AntiqueWhite -fg Black &'
alias termb='xterm -bg AntiqueWhite -fg NavyBlue &'
alias termg='xterm -bg AntiqueWhite -fg OliveDrab &'
alias termr='xterm -bg AntiqueWhite -fg DarkRed &'
alias aterm='aterm -ls -fg gray -bg black'
alias xtop='xterm -fn 6x13 -bg LightSlateGray -fg black -e top &'
alias xsu='xterm -fn 7x14 -bg DarkOrange4 -fg white -e su &'

# Alias for lynx web browser
alias bbc='lynx -term=vt100 http://news.bbc.co.uk/text_only.stm'
alias nytimes='lynx -term=vt100 http://nytimes.com'
alias dmregister='lynx -term=vt100 http://desmoinesregister.com'

alias spell='echo $@ | aspell -a list'

# Functions
# #########

# Some example functions
# function settitle() { echo -ne "\e]2;$@\a\e]1;$@\a"; }
function build() { flex -Cf scanner.l; gcc -Wall -O -mno-cygwin -o $1 scanner.c; }
function debugflex() { flex -d scanner.l; gcc -mno-cygwin -o $1 scanner.c; }
function debugc() { flex scanner.l; gcc -g -Wall -mno-cygwin -o $1 scanner.c; }
# use ctrl l to clear screen

netinfo ()
{
echo "--------------- Network Information ---------------"
/usr/sbin/ifconfig | awk /'inet addr/ {print $2}'
echo ""
/usr/sbin/ifconfig | awk /'Bcast/ {print $3}'
echo ""
/usr/sbin/ifconfig | awk /'inet addr/ {print $4}'

# /sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
echo "---------------------------------------------------"
}

function include_d {
	dir=$1
	if [ -d $HOME/.$dir.d -a -r $HOME/.$dir.d -a -x $HOME/.$dir.d ]; then
		for i in $HOME/.$dir.d/*.sh; do
			 source $i
		done
	fi
}

#include_d bash_functions
#include_d bash_aliases
#include_d bash_completion

# Prompting
# #########

# commands to adjust prompt settings
# PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ " #original
# PS1="\[\e[32;1m\]\w> \[\e[0m\]" # from http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# PS1="\[\e]2;\u@\H \w\a\e[32;1m\]>\[\e[0m\] " # another one from the website

PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\](jobs: \j) \w\[\e[32;1m\]\n[\t]\$\[\e[0m\] "
 

# WELCOME SCREEN
#######################################################

echo -ne "${WHITE} USA Linux Users Group ${NC}"; echo "";
echo -e "Kernel Information: " `uname -smr`;
echo -e ${LIGHTBLUE}`bash --version`;echo ""
echo -ne "Hello $USER today is "; date
echo -e "${WHITE}"; cal ; echo "";
#echo -ne "${CYAN}";netinfo;
echo -e "${RED}"; tail .bash_history ; echo ""
echo -e "${CYAN}"; mountedinfo ; echo ""
echo -ne "${WHITE} http://usalug.org${NC}"; echo ""; fortune -s; echo ""

