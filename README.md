#Gitshorts
Hate every day git pull and push stuff?  
Gitshorts provide a set of commands to help you make your git life easier.

## How to Install
### Clone it
```
$ git clone git://github.com/agate/gitshorts.git
$ cd gitshorts
$ ./install
```
### Use Mac and Homebrew?
```
$ brew install gitshorts
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

###Utils
 Command | What it does
---------|--------------
 up      | fetch the latest code from your origin repo. rebase all your branchs.
 sync    | git up; git push
