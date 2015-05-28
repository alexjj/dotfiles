dotfiles
========

Repo for any dotfiles, managed with GNU Stow.

Quick Gudie to Stow and dotfiles
--------------------------------


* Create ${HOME}/dotfiles directory and then inside it make subdirectories for 
all the programs whose cofigurations I wanted to manage.

* Inside each of those directories, move in all the appropriate files,
maintaining the directory structure of my home directory.

So, if a file normally resides at the top level of your home directory,
it would go into the top level of the program's subdirectory.

If a file normally goes in the default ${XDG_CONFIG_HOME}/${PKGNAME} location
(${HOME}/.config/${PKGNAME}), then it would instead go in ${HOME}/dotfiles/${PKGN
AME}/.config/${PKGNAME} and so on. 

* Finally, from the dotfiles directory, you just run $ stow $PKGNAME and Stow
will symlink all the package's configuration files to the appropriate locations. 
