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
endif
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
let g:NERDTreeWinPos = "right"
set tabstop=4    
set softtabstop=4
set background=dark
colorscheme wombat

"qemu
set secure
set exrc
set expandtab
set shiftwidth=4
set smarttab

"folding
set fdm=syntax
set foldnestmax=3

"line number
set number

"FixME: following statements might lost effection due to ycm
"scope, provide by csdn blog
if has("cscope")
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
NeoBundle 'Shougo/vimproc.vim'
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

"key mappings
map <F2> :NERDTreeToggle <CR>
"<F3> call AutotagsAdd()"
"<F4> call AutotagsUpdate()
map <F5> :TlistToggle <CR>
nmap  <C-@> s :cs find s  <CR> =expand(" < cword > ") <CR> <CR>  
nmap  <C-@> g :cs find g  <CR> =expand(" < cword > ") <CR> <CR>  
nmap  <C-@> c :cs find c  <CR> =expand(" < cword > ") <CR> <CR>  
nmap  <C-@> t :cs find t  <CR> =expand(" < cword > ") <CR> <CR>  
nmap  <C-@> e :cs find e  <CR> =expand(" < cword > ") <CR> <CR>  
nmap  <C-@> f :cs find f  <CR> =expand(" < cfile > ") <CR> <CR>  
nmap  <C-@> i :cs find i ^ <CR> =expand(" < cfile > ") <CR>$ <CR>  
nmap  <C-@> d :cs find d  <CR> =expand(" < cword > ") <CR> <CR>


