"" -----------------------------------------------------------------------------
""  < 判断是终端还是 Gvim >
"" -----------------------------------------------------------------------------
if has("gui_running")
	let g:isGUI = 1
else
	let g:isGUI = 0
endif

if has("gui_macvim")
	set macmeta
end

"==============================================================================
"< 一般设置》
"==============================================================================

set shortmess=atI "去掉乌干达
set nocompatible "关闭vi兼容模式
syntax enable
syntax on "自动语法高亮
set number "显示行号
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
" set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set scrolloff=3 " 光标离底边3行
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 历史记录数
set history=1000
" 当文件在外部被修改，自动更新该文件
set autoread 
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set guioptions-=L " 隐藏左侧滚动条 
set guioptions-=r " 隐藏右侧滚动条 
set guioptions-=b " 隐藏底部滚动条
set smartindent " 开启新行时使用智能自动缩进
set whichwrap+=<,>,h,l,[,]
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\  " 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
"set foldclose=all " 设置为自动关闭折叠 
set foldlevel=999
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠

"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" 配置多语言环境
if has("multi_byte")
	" UTF-8 编码
	set encoding=utf-8
	set termencoding=utf-8
	set formatoptions+=mM
	set fencs=utf-8,gbk
endif

if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
	set ambiwidth=double
endif

let g:fullscreen = 0
function! ToggleFullscreen()
	if g:fullscreen == 1
		let g:fullscreen = 0
		let mod = "remove"
	else
		let g:fullscreen = 1
		let mod = "add"
	endif
	call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
endfunction



"开启光亮光标行
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"开启高亮光标列
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white



"=========================  键盘映射  ================================
"
"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <A-H> <C-w>h
nnoremap <A-J> <C-w>j
nnoremap <A-K> <C-w>k
nnoremap <A-L> <C-w>l
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
imap <C-v> <esc>"+pa

""map <C-A> ggVGY
""map! <C-A> <ESC>ggVGY

map <silent> <F11> :call ToggleFullscreen()<CR>

" buffer切换
nmap <C-J>  :bnext<CR>
nmap <C-K>  :bprev<CR>

" tab 切换
nmap <C-H> :tabp<CR>
nmap <C-L> :tabn<CR>

imap jj <esc>

" insert mode shortcut
map! <C-h> <Left>
map! <C-j> <Down>
map! <C-k> <Up>
map! <C-l> <Right>
map! <C-d> <DELETE>

noremap <A-j> O<esc>j
noremap <A-k> kdd
noremap <A-o> o<esc>k
noremap <A-O> O<esc>j

nmap <TAB> ^i<TAB><esc>^

nnoremap j gj
nnoremap k gk

cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" sudo
cnoremap w!! w !sudo tee % >/dev/null

map <F10> :source ~/.vimrc<CR>

" ======================  其他配置 ==============================
source ~/.vim/vundle_config.vim
filetype on

" ====================== Python ==================
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent

autocmd FileType mako setlocal et sta sw=4 sts=4
autocmd FileType mako setlocal foldmethod=indent

autocmd FileType html setlocal et sta sw=4 sts=4
autocmd FileType html setlocal foldmethod=indent

autocmd FileType js setlocal et sta sw=4 sts=4
autocmd FileType js setlocal foldmethod=indent

autocmd FileType css setlocal et sta sw=4 sts=4
autocmd FileType css setlocal foldmethod=indent

autocmd FileType processing setlocal et sta sw=4 sts=4
autocmd FileType processing setlocal foldmethod=indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"C语言编译
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-F5> :call Compile()<CR> "设置编译映射
func! Compile()
	if &filetype == 'c'
		exec "w"
		set makeprg=gcc\ -Wall\ %:p\ -o\ %:r "这个地方设置了makeprg变量
		"这个地方将原来的gcc命令改为make命令
		exec "make"
		"这个命令是在编译时打开quickfix列表窗口
		exec "copen"
	endif
endfunc

map <F5> :call Run()<CR> "设置运行映射
func! Run()
	if &filetype == 'c'
		exec "!./%<"
	elseif &filetype == 'python'
		exec "!python %"
	endif
endfunc

map <A-F5> :call CompileRun()<CR> "设置编译并运行的映射
func! CompileRun()
	if &filetype == 'c'
		exec "w"
		exec "!clear"
		set makeprg=gcc\ -Wall\ %:p\ -o\ -%:r
		exec "make"
		exec "!./-%<"
	endif
endfunc

map <F6> :call Debug()<CR>
func!  Debug()
	exec "w"
	exec "!gcc % -o %< -gstabs+"
	exec "!gdb %<"
endfunc

command! Js set filetype=javascript
command! Mako set filetype=mako
command! Html set filetype=html
command! Css set filetype=css
command! Python set filetype=python

"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2zh()
"##### auto fcitx end ######
