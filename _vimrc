"This is my personal vimrcfile.
"
"Set mapleader
let mapleader = ";"

"When .vimrc is edited, reload it
autocmd! bufwritepost _vimrc source $vim/_vimrc

"Shortcut to edit vimrc.
map <silent> <leader>ee :e $vim/_vimrc<cr>

"Set number of lines.
set nu

"Set color theme.
colorscheme desert

"Set cursor crossmark
set cursorline
set cursorcolumn

"Hide/display the toolbar and menu with F2.
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

"Cancel autobackup file.
set nobackup

"Cancel cursor blinking.
set gcr=a:blinkon0

"CHINESE
let &termencoding=&encoding
set fileencodings=utf-8,gbk

"Cancel GUI options.
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=R

"Always display status line.
set laststatus=2

"Use vim mode, not vi node
set nocompatible

"Checking filetype
filetype plugin indent on 

"Some mapping options:
map <silent> ss 0
map <silent> ee $
map <silent> <leader>s gg
map <silent> <leader>e G
map j gj
map k gk



set ruler
syntax on 
"--------------------------------------------------------------------------
"source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set background=dark
let g:solarized_termcolors=256

"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
 set t_Co=256
 let g:Powerline_symbols = 'fancy'
 "}

"以下设置针对python
set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
filetype plugin on
let g:pydiction_location = 'D:\Program Files (x86)\Vim\tools\pydiction\complete-dict'


set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:


