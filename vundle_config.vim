call plug#begin('~/.vim/plugged')

"=========== 美化 ============
" powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 主题
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/turbo.vim'

" 命令行下主题
Plug 'vim-scripts/CSApprox'

" 对齐线
Plug 'Yggdroot/indentLine'
"=============================

Plug 'w0rp/ale', {'for': ['py', 'js', 'css', 'scss']}

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'

"输入法
Plug 'ybian/smartim'

" 括号补全
Plug 'Raimondi/delimitMate'

Plug 'Tagbar'

" 前端部分
Plug 'jQuery'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'posva/vim-vue'


" SilverSearch
"Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'

" 显示行末空格
Plug 'ShowTrailingWhitespace'

"
" python pep8 + pyflask F7 pep8错误显示
Plug 'nvie/vim-flake8'
" 自动pep8 format
Plug 'tell-k/vim-autopep8'
" python高亮
Plug 'hdima/python-syntax'
"Plug 'python-rope/ropevim'
Plug 'fs111/pydoc.vim'

" 目录树 F9
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" 平滑滚动
"Plug 'yonchu/accelerated-smooth-scroll'

" 代码块补全
Plug 'SirVer/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer'}

" 跳转插件 \\w
Plug 'Lokaltog/vim-easymotion'


" 注释 \cc \cn \c
Plug 'scrooloose/nerdcommenter'

Plug 'kien/ctrlp.vim'

" 多行选择 C-n C-p C-x
Plug 'terryma/vim-multiple-cursors'

Plug 'jlanzarotta/bufexplorer'

Plug 'sophacles/vim-bundle-mako'

Plug 'junegunn/goyo.vim'

Plug 'chemzqm/wxapp.vim'

Plug 'elzr/vim-json'

Plug 'gabrielelana/vim-markdown'

call plug#end()


" YouCompleteMe`
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
nmap <F1> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_semantic_triggers = {
   \   'css': [ 're!^\s{2}', 're!:\s+' ],
   \   'html': ['</','re!^\s{2}', 're!:\s+'],
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

"========== 美化 ================

if has('gui_running')
	set macmeta
	set transparency=10
	colorscheme molokai
	"set guifont=Menlo:h13
	set background=dark
	"colorscheme solarized
	set guifont=PragmataPro:h14
else
    set t_Co=256
	colorscheme molokai
	"set guifont=Menlo:h13
	set guifont=PragmataPro:h14
endif


" vim-airline {
    "let g:airline_theme='violet'
    let g:Powerline_symbols='fancy'
    "let g:airline#extensions#tabline#enabled=1
    "let g:airline#extensions#tabline#buffer_idx_mode = 1
    "let g:airline#extensions#tabline#buffer_nr_show = 1
    "let g:airline#extensions#tabline#buffer_nr_format = '%s:'
    "let g:airline#extensions#tabline#fnamemod = ':t'
    "let g:airline#extensions#tabline#fnamecollapse = 1
    "let g:airline#extensions#tabline#fnametruncate = 0
    "let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
    let g:airline#extensions#default#section_truncate_width = {
                \ 'b': 79,
                \ 'x': 60,
                \ 'y': 88,
                \ 'z': 45,
                \ 'warning': 80,
                \ 'error': 80,
                \ }
    let g:airline#extensions#default#layout = [
                \ [ 'a', 'error', 'warning', 'b', 'c' ],
                \ [ 'x', 'y', 'z' ]
                \ ]

    " Distinct background color is enough to discriminate the warning and
    " error information.
    let g:airline#extensions#ale#error_symbol = '•'
    let g:airline#extensions#ale#warning_symbol = '•'
" }

" ======= ale 语法分析 =========

let g:ale_linters = {
            \   'python': ['flake8'],
            \}
let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2'
let g:ale_python_flake8_args = '-m flake8 --ignore C0111,W391'

" If emoji not loaded, use default sign
try
    let g:ale_sign_error = emoji#for('boom')
    let g:ale_sign_warning = emoji#for('small_orange_diamond')
catch
    " Use same sign and distinguish error and warning via different colors.
    let g:ale_sign_error = '•'
    let g:ale_sign_warning = '•'
endtry
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']

" For a more fancy ale statusline
function! ALEGetError()
    let l:res = ale#statusline#Status()
    if l:res ==# 'OK'
        return ''
    else
        let l:e_w = split(l:res)
        if len(l:e_w) == 2 || match(l:e_w, 'E') > -1
            return ' •' . matchstr(l:e_w[0], '\d\+') .' '
        endif
    endif
endfunction

function! ALEGetWarning()
    let l:res = ale#statusline#Status()
    if l:res ==# 'OK'
        return ''
    else
        let l:e_w = split(l:res)
        if len(l:e_w) == 2
            return ' •' . matchstr(l:e_w[1], '\d\+')
        elseif match(l:e_w, 'W') > -1
            return ' •' . matchstr(l:e_w[0], '\d\+')
        endif
    endif
endfunction
