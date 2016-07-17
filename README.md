Stef's dotfile storage *just in case* his house gets raided by the feds

*Note*
To install everything properly, do the following:

1. Install the module in root:
```
cd ~
git clone --recursive git@github.com:stefanqin/dotfiles.git
```
2. Symlink everything with the following command (still in root):
```
sh ~/dotfiles/symlink_all.sh
```
3. Re-install all relevant vim plugins:
```
vim .
(in vim): :PlugClean
(in vim): :PlugInstall
```

Stef's dotfiles are now ready for use!
