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

Bundle 'rking/ag.vim'

" 显示行末空格
"Bundle 'ShowTrailingWhitespace'

" 主题
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/turbo.vim'

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
"
" python pep8 + pyflask F7
Bundle 'nvie/vim-flake8'
Bundle 'pyflakes.vim'
"Bundle 'scrooloose/syntastic'
Bundle 'tell-k/vim-autopep8'

" 目录树 F8
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

Bundle 'plasticboy/vim-markdown'


" 代码块补全
Bundle 'UltiSnips'

" 跳转插件 \\w
Bundle 'Lokaltog/vim-easymotion'


" 注释 \cc \cn \c
Bundle 'scrooloose/nerdcommenter'

Bundle 'kien/ctrlp.vim'

" 多行选择 C-n C-p C-x
Bundle 'terryma/vim-multiple-cursors'

Bundle 'bufexplorer.zip'

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
	set guifont=Menlo:h13
else
	colorscheme molokai
	set guifont=Menlo:h13
endif

" powerline
set laststatus=2 
set t_Co=256 
let g:Powerline_symbols = 'fancy'
let Powerline_symbols = 'compatible'
set encoding=utf8
"let g:airline_theme='luna'

" YouCompleteMe`
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
nmap <F1> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_complete_in_comments_and_strings = 1

"NERD_tree
map <F9> <plug>NERDTreeSteppedOpen<CR>
map <C-F9> <plug>NERDTreeSteppedClose<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeIgnore = ['\.pyc$']


"easyMotion
nmap <A-f> \\w
nmap <A-d> \\b

let g:UltiSnipsExpandTrigger="<C-g>"
let g:UltiSnipsJumpForwardTrigger="<C-g>"
let g:UltiSnipsJumpBackwardTrigger="<C-f>"

" 禁止PyFlakes使用QuickFix，这样在按下<F7>时会调用flake8，而有对于代码编辑时的错误仍能得到有效的提示
"autocmd FileType python map <buffer> <F8> :call Autopep8()<CR>
"let g:autopep8_disable_show_diff=1
let g:flake8_ignore="E501,W293"
let g:pyflakes_use_quickfix = 0


let g:EclimCompletionMethod = 'omnifunc'
:set list lcs=tab:\.\ 

nmap <F2> \be
nmap <F4> :TagbarToggle<CR>
