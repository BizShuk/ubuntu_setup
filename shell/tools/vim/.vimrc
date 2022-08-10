" ref. http://www.study-area.org/tips/vim/Vim-9.html
" ref. http://vimdoc.sourceforge.net/htmldoc/help.html





colorscheme  molokai " 256-jungle , asu1dark

set t_Co=256        " set terminal color mode to 256

set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]  " show status at bottom

syntax on           " syn on
filetype plugin on  "

set hlsearch        " highlight search result after searched
set incsearch       " highlight when searching
set mouse=a         " move cursor to where mouse clicked
set wildmenu        " 有點類似列出完整的指令 ls a<tab>  :spe<tab>

"set list            " turn on invisible characters like end of line as $

"set number          " turn on line number , it will effect copy block and paste

set ai              " autoidnent , default off
"set cin             " cindent , default off

set ignorecase      " ignore case when searching
" set ic  " same as above


"set nowrap          " 超過畫面不換行
set scrolloff=5     " 捲動捲軸時 游標預留n行捲動
"set paste           " better pasting without pasting tab problem , this will effect ultisnips
set cursorline      " hightlight the line cursor now


" setting file encoding 
set encoding=utf8
set fileencoding=utf8
"set fileencodings=utf8,big5,big5-hkscs


set termencoding=utf-8
set sw=4        " shiftwidth
set ts=4           " tabstop
set softtabstop=4
set expandtab
set softtabstop=4
set backspace=indent,eol,start
set bg=light

set backspace=2  " 在 insert 也可用 backspace
set ru           " 第幾行第幾個字
"set smartindent  " 設定 smartindent
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=100  " 保留 100 個使用過的指令
set laststatus=2
set foldmethod=indent



" Pathogen 
"
" plugin in bundle

execute pathogen#infect()

call plug#begin('~/.vim/plugged')
" Plug 'fatih/vim-go'
" Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
call plug#end()




" Vim-go
"
" vim/plugin/vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" let g:go_fmt_command = "goimports" " 把go-fmt 換成 go-import 強烈推薦 :p

        " note for Vim-go option
	"#Save it and check goimport result
	":w
	"
	"#Build current project
	":GoBuild
	"
	"#Run it
	":GoRun
	"
	"#Run Go Run directly
	"            \r
	"
	"#Run Go Build directly
	"            \b
	"
	"#Go to definition
	"g d
	"
	"
	"



" NERDTree
" 
nnoremap <silent> <F5> :NERDTree<CR>
":NERDTree 開啟
"? Help
"i 開在 split 視窗
"t 開在新的 tab
"o Open file / directory
"x close directory
"q 關掉
"








" Autocmd = au
"
" [autocmd doc](http://vimdoc.sourceforge.net/htmldoc/autocmd.html)
"
" au <event>[,<events>] file_pattern
" - [events](http://vimdoc.sourceforge.net/htmldoc/autocmd.html#autocmd-events)
" - [file_pattern](http://vimdoc.sourceforge.net/htmldoc/autocmd.html#file-pattern)
"
" setf = set ft?
"
"
au BufNewFile,BufRead *.wpm setf wpm
au BufNewFile,BufRead *.jhtml setf java
au BufNewFile,BufRead *.c,*.cpp,*.java,*.jhtml,*.pl set cin
au BufNewFile,BufRead *.css set ai
au BufNewFile,BufRead *.css set nocin
au BufNewFIle,BufRead *.js set ft=javascript
au BufNewFIle,BufRead *.{html,htm} set ft=html
au BufNewFIle,BufRead *.php set ft=php
au BufNewFIle,BufRead *.sh set ft=sh
au BufNewFIle,BufRead Dockerfile* set ft=Dockerfile
au BufNewFIle,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set ft=markdown
au BufNewFile,BufRead *.txt,*.tex set spell
au BufNewFile,BufRead *.make set ft=make
au BufNewFile,BufRead *.conf set ft=conf
au BufNewFile,BufRead *.bash* set ft=bash
" for autoformat
au BufWrite * :Autoformat

" Map
" 
" n : normal only
" v ; visual and select
" o : insert next new line
" x : visual only
" a : append
" s : select only
" i : insert
" c : command-line
" l : insert, command-line, regexp-search
" ^ : 游標移至行頭
" $ : 游標移至行尾
"
" map :  recursive versions of the various mapping
" normap: non-recursive versions of the various mapping
" <silent> : don't show operation hint on menu bars

" select previous or next tab
nnoremap <C-Left> :tabp<CR>
nnoremap <C-Right> :tabn<CR>

" create new tab
nnoremap <C-n> :tabnew 
nnoremap <C-t> :tabnew 

" write file , <C-w> 影響split
" nnoremap <C-w> :w<CR>

" quit
nnoremap <silent> <A-w> :q<CR>

" move current tab forward or backward
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>


"nmap > <C-w>><CR>  " effect decrease left indent
"nmap < <C-w><<CR>  " effect increase left indent
nmap + <C-w>+<CR>
nmap _ <C-w>-<CR>
"nmap - <C-kPLus><CR>
"nmap = <C-kMinus><CR>
nmap w :w<CR>
nmap q :q<CR>
nmap <F6> :noh<CR>

" delete current term
nmap <C-d> <ESC>diwi
imap <C-d> <ESC>diwi
" copy current term
nmap <C-c> <ESC>viwp
imap <C-C> <ESC>viwp




if version >= 700
  map g1 :tabn 1<CR>
  map g2 :tabn 2<CR>
  map g3 :tabn 3<CR>
  map g4 :tabn 4<CR>
  map g5 :tabn 5<CR>
  map g6 :tabn 6<CR>
  map g7 :tabn 7<CR>
  map g8 :tabn 8<CR>
  map g9 :tabn 9<CR>
  map g0 :tabn 10<CR>
end

" Default hot key
"
"dl"    delete character (alias: "x")       |dl|
"diw"   delete inner word                   *diw*
"daw"   delete a word                       *daw*
"diW"   delete inner WORD (see |WORD|)      *diW*
"daW"   delete a WORD (see |WORD|)          *daW*
"dd"    delete one line                     |dd|
"dis"   delete inner sentence               *du*
"das"   delete a sentence                   *das*
"dib"   delete inner '(' ')' block          *dib*
"dab"   delete a '(' ')' block              *dab*
"dip"   delete inner paragraph              *dip*
"dap"   delete a paragraph                  *dap*
"diB"   delete inner '{' '}' block          *diB*
"daB"   delete a '{' '}' block              *daB*




" Tagbar
"
nmap <F8> :TagbarToggle<CR>
" For go tag , https://github.com/jstemmer/gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


" Vim-Autoformat https://github.com/Chiel92/vim-autoformat
"
" For customized format program
"let g:formatterpath = ['/some/path/to/a/folder', '/home/superman/formatters']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" To disable or re-enable these option for specific buffers, use the buffer local variants: b:autoformat_autoindent, b:autoformat_retab and b:autoformat_remove_trailing_spaces. So to disable autoindent for filetypes that have incompetent indent files, use
"autocmd FileType vim,tex let b:autoformat_autoindent=0
" You can manually autoindent, retab or remove trailing whitespace with the following respective commands.
"gg=G
":retab
":RemoveTrailingSpaces



" UltiSnips
"
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsListSnippets='<s-tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips"
let g:UltiSnipsUsePythonVersion = 2             " depend on python version




" Highlight  =  hi
" 
" highlight target :
" - Visual
" - TabLineSel
" - TabLine
" - clear
" - Folded
" - SpecialKey
" - Title
" - CursorLine
" - CursorColumn
" - MatchParen
" - PmenuSel
" - Comment
"
" Normal terminal
" - term    , {attr-list}
" - termfg  , {color-nr}
" - termbg  , {color-nr}
"
" GUI
" - gui
" - guibg
" - guifg
"
" Colorful terminal
" - cterm   , {attr-list}
" - ctermfg , {color-nr}
" - ctermbg , {color-nr}
"
"
"hi TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
"hi TabLine    term=bold cterm=bold
"hi clear TabLineFill
"hi Folded term=bold,underline ctermbg=0
hi Visual ctermbg=White


" Visual
"
" How to select?
" - v , select with char
" - V , select with line
" - ctrl + v , select with block
"
" Operations
"
"


" Statusline
"
" samples:
" http://got-ravings.blogspot.tw/2008/08/vim-pr0n-making-statuslines-that-own.html
" set statusline=%<%f%m\ \[%{&ff}:%{&fenc}:%Y]\ %{getcwd()}\ \ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]\ %=\ Line:%l\/%L\ Column:%c%V\ %P
"
" set statusline=
" set statusline +=%1*\ %n\ %*            "buffer number
" set statusline +=%5*%{&ff}%*            "file format
" set statusline +=%3*%y%*                "file type
" set statusline +=%4*\ %<%F%*            "full path
" set statusline +=%2*%m%*                "modified flag
" set statusline +=%1*%=%5l%*             "current line
" set statusline +=%2*/%L%*               "total lines
" set statusline +=%1*%4v\ %*             "virtual column number
" set statusline +=%2*0x%04B\ %*          "character under cursor
