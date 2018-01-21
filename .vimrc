" GENERAL  ==================================================================
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/ 
set shortmess+=A                " don't care about existing swap file warning
set clipboard=unnamed           " operations such as yy, D, and P work with the clipboard
set autoread                    " auto refresh unchanged files
set modeline


" EDITOR  ==================================================================
syntax on
set expandtab                   " use spaces instead of tabs
set shiftwidth=4                " use 4 spaces as one indent
set softtabstop=4               " in insert mode, tabs are 4 spaces 
set backspace=indent,eol,start  " allow backspace key to erase previously entered characters, autoindent, and newlines in insert mode
set incsearch                   " find next match as we type
nnoremap <space> i<space><esc>  " insert whitespace from normal mode
"set textwidth=80 

" Enable mouse 
set mouse=a
set ttymouse=xterm2
if has('mouse_sgr')
    set ttymouse=sgr
endif
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Uncomment following to use smart splits
"set wmh=0                        " crop horizontal splits to just show the one under focus
"set winminheight=0               " set min height of split
"set winheight=999                " set default width of split

" Easy movement between splits
let g:BASH_Ctrl_j = 'off'        " disable ctrl-j behavior
map <C-J> <C-W>j<C-W>_          
map <C-K> <C-W>k<C-W>_
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Execture python script with ctrl+B
autocmd Filetype python nnoremap <C-B> :w <bar> exec '!python '.shellescape('%')<CR>


" APPERANCE ===================================================================
highlight ColorColumn ctermbg=DarkMagenta
call matchadd('ColorColumn', '\%81v', 100)
set title                        " display title
set number                       " display line numbers
set colorcolumn=80               " mark column 80
set nohlsearch                   " turn of highlight search 
set t_Co=256                     " let vim use 256 colors
syntax enable                    " turn on syntax highlighting
colorscheme onedark
let g:onedark_termcolors=256
"set guifont=Inconsolata\ 12
"autocmd BufEnter * Tomorrow-Night
"autocmd BufEnter *.html colorscheme onedark
"autocmd BufEnter *.py colorscheme monokai
"autocmd BufEnter *.css colorscheme candycode


" BUNDLE LOADING ==============================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" UI
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lifepillar/vim-cheat40.git'

" Editor
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'godlygeek/tabular'              " align code
Plugin 'Valloric/YouCompleteMe'         " advanced code completion engine
Plugin 'nvie/vim-flake8'                " execute current file
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'              " perform all vim insert mode completions with Tab

" Language support
Plugin 'Shutnik/jshint2.vim'            " linting for javascript
Plugin 'sheerun/vim-polyglot'           " a collection of language packages
Plugin 'pangloss/vim-javascript'        " syntaxt, indent, ftdetect, ftplugin, extras
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/html5.vim'               " syntax, indent, autoload, ftplugin
Plugin 'mitsuhiko/vim-python-combined'  " syntax, indent

" Framework support
Plugin 'burnettk/vim-angular'



call vundle#end()
filetype plugin indent on


" BUNDLE CONFIG ===============================================================

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" NERDTree
let g:NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
\ }


" Vim Minimap
" autocmd VimEnter * Minimap
" let g:minimap_show='<leader>ms'
" let g:minimap_update='<leader>mu'
" let g:minimap_close='<leader>gc'
" let g:minimap_toggle='<leader>gt'


" Vim Airline
set laststatus=2
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set guifont=Inconsolata\ for\ Powerline:h15
let g:airline_powerline_fonts=1
let g:airline_theme='dark'
"let g:airline_theme='onedark'
let g:Powerline_symbols = 'fancy'


" NERDCommenter
let mapleader=','


" Easy Motion
nmap <Space> <Plug>(easymotion-prefix)
nmap <Space>w <Plug>(easymotion-w)
nmap <Space>f <Plug>(easymotion-f)


" Multiple Cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'
" let g:multi_cursor_exit_from_visual_mode=1
" let g:multi_cursor_exit_from_insert_mode=1
" let g:multi_cursor_insert_maps={}
" highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
" highlight link multiple_cursors_visual Visual


" Emmet
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_install_global = 0
let g:use_emmet_complete_tag = 1
autocmd FileType html,css EmmetInstall
let g:user_emmet_settings = {
\   'html' : {
\       'indentation' : '    ',
\   },
\   'css' : {
\       'indentation' : '  ',
\   },
\}


" YouCompleteMe
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']  " Make compatible with ultisnips
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']    " With help from super tab


" Supertab
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0


" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" Gitgutter
set updatetime=250
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1


" jshint2
"let jshint2_read = 1                  " lint js files after reading it
"let jshint2_save = 1                  " lint js files after saving it
"let jshint2_close = 1                 " automatically close orphaned error lists
"let jshint2_confirm = 0             " skip lint confirmation for non js files
"let jshint2_color = 0               " do not use colored messages
"let jshint2_error = 0               " hide error codes in error list
"let jshint2_min_height = 3
"let jshint2_max_height = 12

" SnipMate
"imap <C-J> <Plug>snipMateNextOrTrigger
"smap <C-J> <Plug>snipMateNextOrTrigger
