#My VIM config

## init subtree
1. cp .vimrc ~/  
2. git remote add -f vundle https://github.com/VundleVim/Vundle.vim.git

##YCM config
``cd bundle/YouCompleteMe``  
``./install.py --tern-completer``  

JavaScript support: install Node.js and npm. Then navigate to YouCompleteMe/third_party/ycmd/third_party/tern_runtime and run npm install --production
