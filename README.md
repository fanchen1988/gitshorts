#Gitshorts
Hate every day git pull and push stuff?  
Gitshorts provide a set of commands to help you make your git life easier.

## How to Install
> Make sure you PATH included ~/bin

### Automatic installer
```
$ curl -Lo- https://raw.github.com/agate/gitshorts/master/bootstrap.sh | bash
```

### Manually
```
$ git clone git://github.com/agate/gitshorts.git ~/.gitshorts
$ cd ~/.gitshorts
$ mkdir -p ~/bin
$ ln -s ~/.gitshorts/gitconfig ~/.gitconfig
$ ln -s ~/.gitshorts/bin/git-sync ~/bin
$ ln -s ~/.gitshorts/bin/git-up ~/bin
```

## Mapping

###Aliases
 Alias | Origin Command
-------|----------------
 ls    | ls-file
 st    | status
 ci    | commit -a
 co    | checkout
 cl    | clone
 rb    | rebase
 ps    | push
 pl    | pull
 rp    | pull --rebase
 df    | diff
 lg    | log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -- |
 root  |  rev-parse --show-toplevel

###Utils
 Command | What it does
---------|--------------
 up      | fetch the latest code from your origin repo. rebase all your branchs.
 sync    | git up; git push
