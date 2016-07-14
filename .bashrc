alias open='cygstart'
alias npm='cmd /c npm'
alias pipupdateall='pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'

PATH=$HOME/bin:$PATH

#for powerline
if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi
export TERM=xterm-256color
export TA="Desktop/General-NEW/Startups/TA/Code/BitcoinPairsTrading/"

#add pbcopy/pbpaste functionality
[bash light="true"]
if [ -e /dev/clipboard ]; then
alias pbcopy='cat >/dev/clipboard'
alias pbpaste='cat /dev/clipboard'
fi
[/bash]
