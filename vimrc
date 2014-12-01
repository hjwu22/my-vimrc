set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
" Nerdtree
if has("autocmd")
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
endif

set tabstop=4    
set softtabstop=4
set background=dark
colorscheme wombat

"scope, provide by csdn blog
if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    "else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb            
endif

"ctags
map < F4 >  :!ctags -R --laguanges=c,c++ --if0=yes -kinds =+p  --exclude=.git --fields =+iaS  --extra =+q . < CR > < CR > 
map < F3 >	:Tlist < CR >
nmap  < C- @ > s :cs find s  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > g :cs find g  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > c :cs find c  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > t :cs find t  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > e :cs find e  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > f :cs find f  < CR > =expand(" < cfile > ") < CR > <CR >  
nmap  < C- @ > i :cs find i ^ < CR > =expand(" < cfile > ") < CR >$ < CR >  
nmap  < C- @ > d :cs find d  < CR > =expand(" < cword > ") < CR > <CR >

"you complete me
"

"neoBundle
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
    set nocompatible               " Be iMproved

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"let g:make = 'gmake'
"if system('uname -o') =~ '^GNU/'
"    let g:make = 'make'
"endif
"NeoBundle 'Shougo/vimproc.vim', {'build': {'unix': g:make}}

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on
NeoBundle 'https://github.com/Valloric/YouCompleteMe.git'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/sudo.vim'
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"qemu
set secure
set exrc
set expandtab
set shiftwidth=4
set smarttab

"move cursor to previous position
if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
