set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'maksimr/vim-jsbeautify'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
"Plugin 'python-rope/ropevim'
Plugin 'fs111/pydoc.vim'

"let Vundle manage Vundle
"required!
Plugin 'gmarik/vundle'

"My Bundles here:
"original repos on github

"输入法
Plugin 'ybian/smartim'

" 括号补全
Plugin 'Raimondi/delimitMate'


Plugin 'Tagbar'

Plugin 'jQuery'

" SilverSearch
"Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'

" 显示行末空格
Plugin 'ShowTrailingWhitespace'

" 主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/turbo.vim'

" powerline
Plugin 'Lokaltog/vim-powerline'
"Plugin 'bling/vim-airline'

" 命令行下主题
Plugin 'vim-scripts/CSApprox'

" 对齐线
Plugin 'Yggdroot/indentLine'
"
" python pep8 + pyflask F7
Plugin 'nvie/vim-flake8'
Plugin 'pyflakes.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'tell-k/vim-autopep8'
Plugin 'hdima/python-syntax'
Plugin 'mindriot101/vim-yapf'

" 目录树 F8
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'plasticboy/vim-markdown'

" 平滑滚动
Plugin 'yonchu/accelerated-smooth-scroll'

" 代码块补全
Plugin 'SirVer/UltiSnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

" 跳转插件 \\w
Plugin 'Lokaltog/vim-easymotion'


" 注释 \cc \cn \c
Plugin 'scrooloose/nerdcommenter'

Plugin 'kien/ctrlp.vim'

" 多行选择 C-n C-p C-x
Plugin 'terryma/vim-multiple-cursors'

Plugin 'bufexplorer.zip'

Plugin 'sophacles/vim-processing'

Plugin 'sophacles/vim-bundle-mako'

Plugin 'junegunn/goyo.vim'

call vundle#end()
filetype plugin indent on     " required!

"==========  theme  ===========
if has('gui_running')
	set macmeta
	set transparency=10
	colorscheme molokai
	"set guifont=Menlo:h13
	set background=dark
	"colorscheme solarized
	set guifont=PragmataPro:h14
else
	colorscheme molokai
	"set guifont=Menlo:h13
	set guifont=PragmataPro:h14
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
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1

"NERD_tree
map <F9> <plug>NERDTreeSteppedOpen<CR>
map <C-F9> <plug>NERDTreeSteppedClose<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeIgnore = ['\.pyc$']

let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'

" 禁止PyFlakes使用QuickFix，这样在按下<F7>时会调用flake8，而有对于代码编辑时的错误仍能得到有效的提示
"autocmd FileType python map <buffer> <F8> :call Autopep8()<CR>
let g:autopep8_disable_show_diff=1
let g:flake8_ignore="E501,W293"
let g:pyflakes_use_quickfix = 0


let g:EclimCompletionMethod = 'omnifunc'
:set list lcs=tab:\.\ 

nmap <silent> <F2> \be
nmap <silent> <F3> :TagbarOpen fc<CR>
nmap <silent> <F4> :TagbarToggle<CR>


" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
