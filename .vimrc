" Vim-plug
" call plug#begin('~/.vim/plugged')
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'eddyekofo94/gruvbox-flat.nvim'

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Vimux
" Plugin 'benmills/vimux'

Plugin 'eslint/eslint'

" Completion
Plugin 'valloric/youcompleteme'

" Nerd tree
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Devicons
Plugin 'ryanoasis/vim-devicons'

" Vim Rainbow
Plugin 'frazrepo/vim-rainbow'

" Prettier for VIM
Plugin 'prettier/vim-prettier'

" ALE
Plugin 'w0rp/ale'

" Status bar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Textmate-like Ctrl+T
Plugin 'kien/ctrlp.vim'

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/vim-gitgutter'

" Zoon in/out of a window
Plugin 'vim-scripts/ZoomWin'

" Ack in Vim
Plugin 'mileszs/ack.vim'

" Small startup screen
Plugin 'mhinz/vim-startify'

" Toggle cursor in insert mode
Bundle 'jszakmeister/vim-togglecursor'

" Languages-related plugins
Plugin 'wavded/vim-stylus'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/jshint.vim'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'moll/vim-node'

" Flow
Plugin 'flowtype/vim-flow'

" Themes
Plugin 'chriskempson/base16-vim'

" vinegar is a file explorer (press -)
" Plugin 'tpope/vim-vinegar'

" Surround
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

" Haskell
Plugin 'git://github.com/urso/haskell_syntax.vim.git'

" Comments
Plugin 'tomtom/tcomment_vim'

" Variable select (around variable: av, inner variable: iv)
Plugin 'robmiller/vim-movar'

" Snippets
" Bundle 'Shougo/neocomplcache.vim'
Plugin 'msanders/snipmate.vim'
" Bundle 'sophacles/vim-bundle-sparkup'

call vundle#end()            " required
filetype plugin indent on    " required

" Base config
syntax enable
set encoding=utf-8
set showcmd  
set number
set relativenumber
set laststatus=2
set autoindent
set smartindent
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
filetype plugin indent on     " load file type plugins + indentation


" Base 16
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Set to auto read when a file is changed from the outside
set autoread

" Syntax / Coloration
syntax enable

" Invisible characters, à la TextMate
set listchars=nbsp:·,tab:▸\ ,eol:¬
set list

" Ignore some files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" No auto folding
set nofoldenable

" 80 column
" set colorcolumn=80

" Changing cursor appearance
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Mouse support
" set mouse=a

" Whitespace
set expandtab                            " use spaces, not tabs
set tabstop=2 shiftwidth=2 softtabstop=2 " a tab is two spaces
set wrap                                 " wrap lines
set backspace=indent,eol,start           " backspace through everything in insert mode
set smarttab
set shiftwidth=2
set tabstop=2
set so=7 " Show 3 lines below / above the cursor
set ai "Auto indent
set si "Smart indent

" Never write backup file
set nobackup
set noswapfile

" Autojump to the last edited position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                     \ exe "normal g'\"" | endif

" Set <leader> key
let mapleader = ","

" Enable / disable the search highlight
nnoremap <C-i> :set hlsearch!<CR>
nnoremap <Leader>j Jx

" Switch between tabs
nmap <Leader>t :tabnew<cr>N<c-w><c-p>
nmap <C-l> gt
nmap <C-h> gT

" Close the current tab, thanks http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/
nnoremap QQ :QuitTab<cr>
command! QuitTab call s:QuitTab()
function! s:QuitTab()
  try
    tabclose
  catch /E784/ " Can't close last tab
    qall
  endtry
endfunction

" sudo write
cmap w!! w !sudo tee > /dev/null %

" CtrlP Plugin
let g:ctrlp_map = '<c-t>'  " Remap CtrP plugin on Ctrl+T
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " Ignore some files

" Prettier Plugin on save
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" Fast saving
nmap <leader>w :w!<CR>

" Make shortcuts
nmap <leader>r :w<CR> :!make html -B<CR><CR>
nmap <leader>c :w<CR> :!make css -B<CR><CR>
nmap <leader>j :w<CR> :!make js -B<CR><CR>

" filetypes
au BufRead,BufNewFile *.md setfiletype markdown
au BufNewFile,BufRead *.xml,*.tpl set ft=html

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Reset search
nmap <F7> :nohlsearch<CR>

" Remove delay on ESC
set timeoutlen=1000 ttimeoutlen=0

" JSHint
" nnoremap <C-l> :JSHint<CR>

" Follow the link in help
nmap <buffer> <Enter> <C-]>
" Follow the help topic in a new split (often useful)
nmap <buffer> <C-Enter> <C-w><C-]><C-w>T

" Neocomplete cache 
" let g:neocomplcache_enable_at_startup = 1

" HTML config
let html_no_rendering = 1 " Prevent bold, underline, italic in HTML

" Enables syntax highlighting for Flow
let g:javascript_plugin_flow = 1

" Test
" call matchadd('ColorColumn', '\%81v', 100)

" Rainbow always on
let g:rainbow_active = 1

" Nerd tree
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
" Nerdtree window size
let g:NERDTreeWinSize=40
" show hidden files
let NERDTreeShowHidden=1
nmap <Leader>f :NERDTreeFocus<cr>F<c-w><c-p>
nmap <Leader>n :NERDTreeToggle<cr>N<c-w><c-p>

" Airline Theme
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

" Give more space for displaying messages.
set cmdheight=2

" Comments
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic

" Set files as specific formating
augroup filetypedetect
  au BufRead,BufNewFile *.prettierrc set filetype=json
  au BufRead,BufNewFile *.eslintrc set filetype=json
  au BufRead,BufNewFile *.babelrc set filetype=json
  au BufRead,BufNewFile *.swcrc set filetype=json
augroup END

" You Complete me shortcuts
nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>yfd <Plug>(YCMFindSymbolInDocument)
