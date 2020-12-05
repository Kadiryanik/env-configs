syntax on

set noerrorbells
set tabstop=8
set softtabstop=4
set shiftwidth=4
" set expandtab			" use space charecter instead tab
set smartindent			" smart indent when texting
"set nu				" set number
"set rnu			" set relative number
set nowrap			" no wrap the lines
set smartcase			" case sensitive searching until put capital letter
set noswapfile
set nobackup
set undodir=~/.vim/undodir	" undo directory
set undofile			" keep undos
set incsearch			" search while typing
set hlsearch			" highlight search string
set splitright			" start new split on right

set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'		    " Plugin manager
Plugin 'preservim/nerdtree'		    " Tree Explorer
Plugin 'mbbill/undotree'		    " Showing undo tree
Plugin 'ctrlpvim/ctrlp.vim'		    " Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'rking/ag.vim'			    " For faster search
Plugin 'thaerkh/vim-workspace'		    " Manage sessions
Plugin 'Valloric/YouCompleteMe'		    " status bar themes
Plugin 'airblade/vim-gitgutter'		    " shows a git diff in the sign column
Plugin 'scrooloose/syntastic'		    " awesome syntax checker
Plugin 'morhetz/gruvbox'		    " for colorscheme
Plugin 'vim-airline/vim-airline'	    " status bar
Plugin 'vim-airline/vim-airline-themes'	    " status bar themes

"Plugin 'tpope/vim-fugitive'
call vundle#end()	    " required
filetype plugin indent on   " required

" leader key
let mapleader = " "

" maps for navigate between splits
map <leader>w <C-w>w
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

map <F2> :set nu!<CR>
map <F3> :set rnu!<CR>

" open Vertical and Horizontal split
nnoremap <silent> <leader>sv <C-w>v
nnoremap <silent> <leader>sh <C-w>S
" rotate splits next, prev, exchange
nnoremap <silent> <leader>sr <C-w>r
nnoremap <silent> <leader>sR <C-w>R
nnoremap <silent> <leader>sx <C-w>x

" resize horizontal split
nnoremap <silent> <leader>+ :resize +5<Enter>
nnoremap <silent> <leader>- :resize -5<Enter>
" resize vertical split
nnoremap <silent> <leader>v+ :vertical resize +5<Enter>
nnoremap <silent> <leader>v- :vertical resize -5<Enter>

" show undo tree
nnoremap <leader>u :UndotreeShow<Enter>

" run 'ctags -R .' for creating tags file in project then
" open project folder in vim then enjoy with GoDefination, GoBack
nmap <leader>gd <C-]>
nmap <leader>gb <C-t>

" CtrlP find folder or file from root
" Press Ctrl+P to search in current directory
nmap <leader>f :CtrlP :pwd<Enter>

" nerdTree maps
nnoremap <leader>t :NERDTreeToggle<Enter>
nnoremap <leader>gf :NERDTreeFind<Enter>

" vim-workspace gives error when nerd tree left open in session
" so close it and quit all for successfully session restore
nnoremap <leader>qa :NERDTreeClose<Enter> :qa!<Enter>
nnoremap <leader>qq :NERDTreeClose<Enter> :wqa<Enter>

" move page up and down one line keep cursor same in line
map <C-Up> <C-Y>
map <C-Down> <C-E>
imap <C-Up> <ESC> <C-Y>i
imap <C-Down> <ESC> <C-E>i

" move current line up and down
map <C-S-Up> :move -2<Enter>
map <C-S-Down> :move +1<Enter>
imap <C-S-Up> <ESC> :move -2<Enter>i
imap <C-S-Down> <ESC> :move +1<Enter>i

" move current split to tab
map <leader>st <C-w>T

" managing tabs
nmap <leader>nt :tabnew<Enter>
nmap <leader>ct :tabclose<Enter>
nnoremap <Tab> gt	" switch the next tab
nnoremap <S-Tab> gT	" switch the prev tab

" highlight trailing
nmap <silent> <leader>WSE :highlight ExtraWhitespace ctermbg=red guibg=red<Enter>:match ExtraWhitespace /\s\+$/<Enter>
nmap <silent> <leader>WSD :match<Enter>

" session settings
let g:workspace_persist_undo_history = 1	" enabled = 1 (default), disabled = 0
let g:workspace_undodir='.undodir'
"let g:workspace_autosave_always = 1
let g:workspace_autosave = 0			" if too much file operation disable it
let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave_ignore = ['gitcommit']

" ctrlp setting
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|zip|gz|o|swp)$',
  \ }
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

" Press <c-f> and <c-b> to cycle between modes.
" Press <c-d> to switch to filename only search instead of full path.
" Press <c-r> to switch to regexp mode.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.
" Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
" Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
" Use <c-y> to create a new file and its parent directories.
" Use <c-z> to mark/unmark multiple files and <c-o> to open them.

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=30
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:45'

" faster search
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l -U --skip-vcs-ignores --nocolor -g ""'

  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l -u --unrestricted --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" :Ag [options] {pattern} [{directory}]
" -w		-> whole word with case sensitive
" -w -i		-> whole word without case sensitive
" -s		-> case sensitive
" -Q		-> dont parse pattern as regex
" -G		-> File search regex
" :Ag commands after search
" e    to open file and close the quickfix window
" o    to open (same as enter)
" go   to preview file (open but maintain focus on ag.vim results)
" t    to open in new tab
" T    to open in new tab silently
" h    to open in horizontal split
" H    to open in horizontal split silently
" v    to open in vertical split
" gv   to open in vertical split silently
" q    to close the quickfix window

" syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_check_on_open = 1
" :SyntasticCheck for checking

" gitgutter settings
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
nmap ) :GitGutterNextHunk <Enter>
nmap ( :GitGutterPrevHunk <Enter>
let g:gitgutter_map_keys = 0
" toggle highlighting
nmap <leader>gh :GitGutterLineHighlightsToggle <Enter>

" colorscheme settings
set background=dark
colorscheme gruvbox

" airline - enable for tabline
let g:airline#extensions#tabline#enabled = 1

" save and load folding texts
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Usefull tips
" u			-> for Undo
" Ctrl+R		-> for Redo
" :e			-> open file
" :mksession		-> create session, give name if you want
" :mksession!		-> overwrite
" :source session	-> load session
" Ctrl+v		-> visual block
" Shift+v		-> visual line, for tabbing
" v			-> visual mode
" Shift+i		-> insert to visual mode
" Shift+.		-> select tab(>) or shift tab(<)
" cw			-> change word starting cursor pos. in the word
" ciw			-> change word starting begin of the word
" ci", ci(, cit		-> change word in "" or () or tag(for html)
" di{, dip, yi{, yip	-> delete or copy in {} or paragraph
" g;	g,		-> go to last (prev) change, go to more recent (next) change
"   SEARCH in file
" /\cword		-> case insensitive search
" /\Cword		-> case sensitive search
" /\<word\>		-> search whole word
" *			-> search the current whole word
" :%s/search/replace/g	-> search and replace 
" :%s/srch/rep/gic	-> search and replace with asking
"			-> a: all, l: replace and quit, q: quit
"   MARKS
" ma			-> mark with 'a' the current cursor position
" 'a			-> go to line with marked 'a'
" `a			-> go to cursor position with marked 'a'
" [' ]'			-> go to prev, next mark line
" :marks		-> show marks
" :delmarks		-> delete given marks a-z or A-Z or a,x,y
" fe			-> find next 'e' in line, usefull in visual mode
"   BUFFERS
" :bp :bn :ls :b3	-> buffers, prev, next, list, jump buffer-3
" :ba :vert ba :3ba	-> bring all buffers, bring up to 3
" :b <tab>		-> select with name and jump
" :bd <tab>		-> select with name and delete in buffer list
" :sp <sv> :vsp <sh>	-> split horizontal(=), split vertical(||), <leader shortcuts>
"   FOLDS
" zf zd zc zo zE	-> create, delete, close, open fold, eliminate all in file
" zC zO			-> when opened nested folds, open and close at once
" zn zN			-> open all, set all folds as they were before (zn)
" zj zk [z ]z		-> jump to next-prev fold, go to top-bottom of fold
" :% foldclose		-> close all fold in file, foldopen for open
" :set fdm=indent	-> set fold method (manuel,indent,syntax,expr,marker,diff)
" zr zm			-> open-close one level for all folds
" zR zM			-> open-close all level for all folds
" Vi{zf OR zfi{		-> select function body and fold it
" zfa{			-> includes function line too
" zf10j			-> fold next 10 line
" XX,YY fold		-> fold line XX to line YY
"   REGISTERS
" :register		-> show registers
" "ayiw			-> copy inner word to register 'a', a-z available
" "ap			-> paste register 'a' content
" ctrl+r a		-> paste register 'a' content in insert mode
" ctrl+r "		-> paste default register in insert mode
"   MACROS
" qm			-> start to recording macro into register 'm', a-z available
"			-> press q again to stop recording macro when you are done
" @m			-> run macro, whic in register 'm'
" 3@m			-> run 3 times
" :let @b='YOURMACRO'	-> set macro in command mode, ctrl+v before ctrl
"			-> commands, make sure it colorful
"   NUMBERS
" 5ctrl+a ctrl+x	-> increment number by 5, decrement number by 1
" g ctrl+a		-> usefull when setting array index, select in visual
"			-> block mode and type this.
" put =range(10,15)	-> inserts number 10 to 15
" for i in range(10,15) | put = '192.168.1.'.i | endfor
"			-> print ip adresses with range
" :%s/^/\=printf('%-4d', line('.'))
"			-> inserts line number to file
"			-> -4d, left aligned, 4d right aligned
"   VIMDIFF
" vimdiff file1 file2	-> shows diff 
" vim -d file1 file2	-> alternative
" ]c [c			-> jump next-prev diff block changes
" :diffupdate		-> update changes
" :diffget		-> get current diff block from other file
" :diffget //2		-> get current diff block from other file (left in merge)
" :diffget //3		-> get current diff block from other file (right in merge)
" :diffput		-> put current diff block to other file

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
