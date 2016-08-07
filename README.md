#My VIM config

## init subtree
1. cp .vimrc ~/  
2. git fetch vunble  
3. git remote add -f vundle https://github.com/VundleVim/Vundle.vim.git
4. git subtree add --prefix=bundle/Vundle.vim vundle master --squash  
