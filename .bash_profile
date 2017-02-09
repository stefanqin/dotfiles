# ~/.bash_profile: executed by bash for login shells.

if [ -e /etc/bash.bashrc ] ; then
 source /etc/bash.bashrc
fi

if [ -e ~/.bashrc ] ; then
 source ~/.bashrc
fi

PATH=$PATH:$HOME/anaconda/bin
