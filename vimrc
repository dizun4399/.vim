"去掉vi的一致性"
set nocompatible
"execute pathogen#infect()"
"显示行号"
set number
" 隐藏滚动条"    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h13         
syntax on    "开启语法高亮"

"colorscheme solarized
"set background=dark
let g:solarized_termcolors=256 "solarized主题设置在终端下的设置"        "设置背景色"
set nowrap    "设置不折行"
set fileformat=unix    "设置以unix的格式保存文件"
set cindent        "设置C样式的缩进格式"
set tabstop=4    "设置table长度"
set shiftwidth=4        "同上"
set showmatch    "显示匹配的括号"
set scrolloff=5        "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2
set mouse=a        "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase        "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set noexpandtab        "不允许扩展table"
set whichwrap+=,h,l
set autoread
set cursorline        "突出显示当前行"
highlight CursorLine cterm=None ctermbg=black ctermfg=green" 

set cursorcolumn        "突出显示当前列"
highlight CursorColumn cterm=None ctermbg=black ctermfg=green"


filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'maralla/completor.vim'
Plugin 'matrix.vim--Yang'
call vundle#end()
filetype plugin indent on


"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25


"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
 
"autopep8设置"
let g:autopep8_disable_show_diff=1

let g:completor_python_binary = '/e/ruanjian/conda/envs/caipiao/python'
let g:completor_clang_binary = '/mingw64/bin/clang'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
map <F4> <leader>ci <CR>


filetype plugin on
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height = 20
map <F5> : call RunPython()<CR>
func! RunPython()
	exec "W"
	if &filetype =='python'
		exec "!time /e/ruanjian/conda/envs/caipiao/python %"
	endif
endfunc
map <F6> : call RunPython2()<CR>
func! RunPython2()
	exec "W"
	if &filetype =='python'
		exec "!time /mingw64/bin/python3 %"
	endif
endfunc
