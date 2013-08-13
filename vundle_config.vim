set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc() 

"let Vundle manage Vundle
"required!
Bundle 'gmarik/vundle'

"My Bundles here:
"original repos on github

" 括号补全
"Bundle 'AutoClose'


Bundle 'Tagbar'

Bundle 'jQuery'

" 显示行末空格
Bundle 'ShowTrailingWhitespace'

" 主题
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

" powerline
Bundle 'Lokaltog/vim-powerline'
"Bundle 'bling/vim-airline'
"
" 补全
Bundle 'Valloric/YouCompleteMe'

" 命令行下主题
Bundle 'vim-scripts/CSApprox'

" 对齐线
Bundle 'Yggdroot/indentLine'

" 目录树 F8
Bundle 'scrooloose/nerdtree'

Bundle 'plasticboy/vim-markdown'

Bundle 'mattn/zencoding-vim'

" 代码块补全
Bundle 'UltiSnips'

" 跳转插件 \\w 
Bundle 'Lokaltog/vim-easymotion'

" python pep8 + pyflask F7
Bundle 'nvie/vim-flake8'

Bundle 'pyflakes.vim'
"
" 注释 \cc \cn \c
Bundle 'scrooloose/nerdcommenter'

Bundle 'kien/ctrlp.vim'

" 多行选择 C-n C-p C-x
Bundle 'terryma/vim-multiple-cursors'

Bundle 'sophacles/vim-processing'

Bundle 'sophacles/vim-bundle-mako'

filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

"==========  theme  ===========
if has('gui_running')
	set background=dark
	colorscheme molokai
else
	colorscheme molokai
endif

" powerline
set laststatus=2 
set t_Co=256 
let g:Powerline_symbols = 'fancy'
let Powerline_symbols = 'compatible'
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10
"let g:airline_theme='luna'

" YouCompleteMe`
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
nmap <F1> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_complete_in_comments_and_strings = 1
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

"NERD_tree
"map <F8> :NERDTree<CR>
map <F8> :NERDTreeFocus<CR>
map <C-F8> :NERDTreeClose<CR>

"easyMotion
nmap <A-f> \\w
nmap <A-d> \\b

let g:UltiSnipsExpandTrigger="<C-g>"
let g:UltiSnipsJumpForwardTrigger="<C-g>"
let g:UltiSnipsJumpBackwardTrigger="<C-f>"

" 禁止PyFlakes使用QuickFix，这样在按下<F7>时会调用flake8，而有对于代码编辑时的错误仍能得到有效的提示
let g:flake8_ignore="E501,W293"
let g:pyflakes_use_quickfix = 0


let g:EclimCompletionMethod = 'omnifunc'
:set list lcs=tab:\.\ 


nmap <F4> :TagbarToggle<CR>
