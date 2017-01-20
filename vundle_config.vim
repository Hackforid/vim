set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"let Vundle manage Vundle
"required!
Plugin 'gmarik/vundle'

"My Bundles here:
"original repos on github

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'

"输入法
Plugin 'ybian/smartim'

" 括号补全
Plugin 'Raimondi/delimitMate'


Plugin 'Tagbar'

"Plugin 'vim-syntastic/syntastic'

" 前端部分
Plugin 'jQuery'
"Plugin 'pangloss/vim-javascript'
Plugin 'othree/es.next.syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-pug'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'skammer/vim-css-color'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'posva/vim-vue'
Plugin 'hail2u/vim-css3-syntax'


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
" python pep8 + pyflask F7 pep8错误显示
Plugin 'nvie/vim-flake8'
" 自动pep8 format
Plugin 'tell-k/vim-autopep8'
" python高亮
Plugin 'hdima/python-syntax'
"Plugin 'python-rope/ropevim'
Plugin 'fs111/pydoc.vim'

" 目录树 F9
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

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

Plugin 'jlanzarotta/bufexplorer'

Plugin 'sophacles/vim-processing'

Plugin 'sophacles/vim-bundle-mako'

Plugin 'junegunn/goyo.vim'

Plugin 'chemzqm/wxapp.vim'

Plugin 'elzr/vim-json'

Plugin 'gabrielelana/vim-markdown'

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
let g:ycm_semantic_triggers = {
   \   'css': [ 're!^\s{2}', 're!:\s+' ],
   \ }

"NERD_tree
map <F9> <plug>NERDTreeSteppedOpen<CR>
map <C-F9> <plug>NERDTreeSteppedClose<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

let g:UltiSnipsExpandTrigger='<C-l>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'

let g:EclimCompletionMethod = 'omnifunc'
:set list lcs=tab:\.\ 

nmap <silent> <F2> \be
nmap <silent> <F3> :TagbarOpen fc<CR>
nmap <silent> <F4> :TagbarToggle<CR>

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_python_checkers = ['pylint']



" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
