let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <F5> [=strftime("%c")] 
inoremap <Up> gk
inoremap <Down> gj
noremap  gccj
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nnoremap  :tabn
nnoremap ,cp :let @*=expand("%:p")
nnoremap ,sql Vi(<:'<,'>Tabularize /\s.*/Vi(>
nnoremap ,dd :call HiEmbeddedHTML()
nnoremap ,tt :%s/\t/\ \ \ /g
nnoremap ,pp mk :execute "silent :call AddPrettyIndents()"`k
nnoremap ,sp :call ToggleSpell() 
nnoremap ,fw :split:vsplitj:vsplit
nnoremap ,to :ToggleWord
nnoremap ,J i
nnoremap ,j J
nmap ,tr :call TabLineSet_verbose_rotate() 
nmap ,tv :call TabLineSet_verbose_toggle() 
nnoremap ,tL :TName ""<Left>
nnoremap ,9t 9gt
nnoremap ,8t 8gt
nnoremap ,7t 7gt
nnoremap ,6t 6gt
nnoremap ,5t 5gt
nnoremap ,4t 4gt
nnoremap ,3t 3gt
nnoremap ,2t 2gt
nnoremap ,1t 1gt
nnoremap ,tx x:tabclose
nnoremap ,tg :tabnew ~/.gvimrc
nnoremap ,te :tabnew ~/.vimrc
nnoremap ,tl :tablast
nnoremap ,tf :tabfirst
nnoremap ,tn :tab split
nnoremap ,fg :call PaddOut() 
nnoremap ,- f-i f-a 
nnoremap ,+ f+i f+a 
nnoremap ,? f/i f/a 
nnoremap ,* f*i f*a 
nnoremap ,= f=i f=a 
nnoremap ,[ f]i F[i f[a 
nnoremap ,] f]i F[a 
nnoremap ,( f)i F(i f(a 
nnoremap ,) f)i F(a 
vnoremap ,mal :Tabularize /^\s*\w*/l2
vnoremap ,cal :Tabularize /\/\/
vnoremap ,al :Tabularize 
nnoremap ,lt :TlistToggle
nnoremap ,cc :call GenerateComment()
nnoremap ,cvim :call GenerateVIMComment()
nnoremap ,cpy :call GeneratePYComment()
nnoremap ,cjs :call GenerateJSComment()
nnoremap ,rl :edit 
nnoremap ,rr :set nowrap! 
nnoremap ,lks :call LoadFullSession()
nnoremap ,mks :call MakeFullSession()
noremap ,g :e! ~/.gvimrc
noremap ,e :e! ~/.vimrc
nnoremap <silent> ,/ :nohlsearch
nnoremap ,w :w!
nnoremap ,W :w !sudo tee %
nnoremap 0 ^
vnoremap : ;
nnoremap : ;
vnoremap ; :
nnoremap ; :
noremap J :bp
noremap K :bn
nnoremap ^ 0
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap gu gU
vnoremap gU gu
nnoremap gu gU
nnoremap gU gu
nnoremap ga a_r
nnoremap gi i_r
nnoremap q; q:
nnoremap <silent> zP O+
nnoremap <silent> zp o+
nnoremap <silent> zk O
nnoremap <silent> zj o
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
vnoremap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
noremap <F8> :call ParsePHP()
noremap <F9> :call g:Jsbeautify()
noremap <F2> :NERDTreeToggle
nnoremap <F5> a["=strftime("%c")pa] 
imap <NL> <Plug>IMAP_JumpForward
inoremap ,f X
inoremap ,mal Tabularize /^\s*\w*/l2
inoremap ,cal Tabularize /\/\/
inoremap ,al Tabularize 
imap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=2
set clipboard=unnamedplus
set cmdheight=2
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=tcqlro
set formatprg=par\ -w75
set grepprg=grep\ -nH\ $*
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175,n-v-c:blinkwait700-blinkon700-blinkoff700
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set omnifunc=syntaxcomplete#Complete
set ruler
set scrolloff=999
set scrollopt=ver,hor
set shiftwidth=3
set showbreak=...
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=3
set statusline=%f%m%r%h%w[%n]\ [F=%{&ff}][T=%Y]\ %=[LINE=%l/%L][%p%%]
set noswapfile
set tabstop=3
set tags=tags;
set undodir=~/.vim/undodir
set undofile
set undolevels=10000
set updatetime=100
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/omxplayer/omxplayer-sync-2-master
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +8 Makefile.include
badd +20 Makefile
badd +31 Makefile.hueck.include
badd +7947 ffmpeg/config.log
badd +3 Makefile.ffmpeg
badd +27 makeOMXSync.sh
argglobal
silent! argdel *
argadd Makefile.include
argadd Makefile
edit Makefile.include
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 38 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 106 + 106) / 213)
exe '2resize ' . ((&lines * 38 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 213)
exe '3resize ' . ((&lines * 16 + 29) / 58)
argglobal
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
set scrollbind
setlocal scrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 19 - ((18 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
wincmd w
argglobal
edit ffmpeg/config.log
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'conf'
setlocal filetype=conf
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
set scrollbind
setlocal scrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'conf'
setlocal syntax=conf
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 3315 - ((17 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3315
normal! 0221|
wincmd w
argglobal
edit makeOMXSync.sh
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqlro
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},!^F,o,O,e,0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,),0=;;,0=;&,0=fin,0=fil,0=fip,0=fir,0=fix
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,.
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 41 - ((15 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 02|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 38 + 29) / 58)
exe 'vert 1resize ' . ((&columns * 106 + 106) / 213)
exe '2resize ' . ((&lines * 38 + 29) / 58)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 213)
exe '3resize ' . ((&lines * 16 + 29) / 58)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
