```
      ██            ██     ████ ██  ██
     ░██           ░██    ░██░ ░░  ░██
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░

  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about  ▓ custom linux config files
 ░▓ author ▓ bguillem
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░

```

## table of contents
 - [introduction](#dotfiles)
 - [vim](#vim)

# dotfiles
in the unix world programs are commonly configured in two different ways, via shell arguments or text based configuration files. programs with many options like window managers or text editors are configured on a per-user basis with files in your home directory `~`. in unix like operating systems any file or directory name that starts with a period or full stop character is considered hidden, and in a default view will not be displayed. thus the name dotfiles. 

it's been said of every console user: 
> _"you are your dotfiles"_.

since they dictate how your system will look and function. to many users (see [ricers](http://unixporn.net) and [beaners](http://nixers.net)) these files are very important, and need to be backed up and shared. people who create custom themes have the added challenge of managing multiple versions of them. i have tried many organization techniques. and just take my word for it when i say, keeping a git repo in the root of your home directory is a bad idea. i've written custom shell scripts for moving or symlinking files into place. there are even a few dotfile managers, but they all seem to have lots of dependencies. i knew there had to be a simple tool to help me.

# vim
with it's tight integration to the unix shell, [vim](http://www.vim.org) has quickly become my editor of choice. once you start to master the movements and operators you quickly begin manipulating, not just editing source code files.

when you learn vim it's best to use a more vanilla config. if helps you focus on learning the editor and not the plugins. vim's vast and powerful plugin system can add many great features. i try to keep my editor slim and fast, but i find myself loving these plugins:

- [plug](https://github.com/junegunn/vim-plug) - to manage other plugins
