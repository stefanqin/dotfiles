alias open='cygstart'

#add pbcopy/pbpaste functionality
[bash light="true"]
if [ -e /dev/clipboard ]; then
alias pbcopy='cat >/dev/clipboard'
alias pbpaste='cat /dev/clipboard'
fi
[/bash]

#add sudo command
PATH=$HOME/bin:$PATH
