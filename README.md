#My VIM config

1. cp .vimrc ~/  
2. git fetch vunble  
3. git subtree pull --prefix=bundle/Vundle.vim vundle --squash  

##YCM config
``cd bundle/YouCompleteMe``  
``./install.py --tern-completer``  

JavaScript support: install Node.js and npm. Then navigate to YouCompleteMe/third_party/ycmd/third_party/tern_runtime and run npm install --production
