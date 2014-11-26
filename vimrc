set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
" Nerdtree
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
"map  < F4 >  :!ctags -R --laguanges=c,c++ --if0=yes -kinds =+p  --fields =+iaS  --extra =+q . < CR > < CR > 
set  cscopequickfix = s -,c-,d-,i-,t-,e-    
nmap  < C- @ > s :cs find s  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > g :cs find g  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > c :cs find c  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > t :cs find t  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > e :cs find e  < CR > =expand(" < cword > ") < CR > <CR >  
nmap  < C- @ > f :cs find f  < CR > =expand(" < cfile > ") < CR > <CR >  
nmap  < C- @ > i :cs find i ^ < CR > =expand(" < cfile > ") < CR >$ < CR >  
nmap  < C- @ > d :cs find d  < CR > =expand(" < cword > ") < CR > <CR >
