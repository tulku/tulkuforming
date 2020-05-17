" List plugins I want to use. To install run :PlugInstall inside NeoVim.
call plug#begin('~/.local/share/nvim/site/plugged')
" Nice status line
Plug 'itchyny/lightline.vim'
" Show a file tree to the left with git changes status
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Fuzzy file search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Show changes using git on the side of the file
Plug 'airblade/vim-gitgutter'
" Comment / uncomment code
Plug 'preservim/nerdcommenter'
" Code navigation using ctags
Plug 'ludovicchabant/vim-gutentags'
" Show a panel with the tags that exist in the current buffer.
Plug 'majutsushi/tagbar'
" Multiple cursors in Vim
Plug 'terryma/vim-multiple-cursors'
" Autocomplete for Vim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" Do not show --INSERT-- as it is in the line already.
set noshowmode

" Make search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" Always show current position
set ruler

" Remove menu bar from gvim
set guioptions-=m
" Remove toolbar from gvim
set guioptions-=T

" Turn syntax highlighting on
syntax on

" Line numbers
set number

colorscheme kalisi
set background=dark
set t_Co=256
let g:airline_theme='kalisi'

" enables a paste mode in which auto indent is turned off
set pastetoggle=<F4>

" hide buffers; don't close them. this way we don't have to save
" a buffer before switching to another one.
set hidden

" save using sudo
cmap w!! w !sudo tee % >/dev/null

" Gutentags options from https://www.reddit.com/r/vim/comments/d77t6j/guide_how_to_setup_ctags_with_gutentags_properly/
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]

" Enable spell checker
set spell

" Update the gutter faster to reflect git changes
set updatetime=100

"""" NERDCommenter options
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Automatically open NERDTree on startup if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Ctrl-n Toggles NERDTree
map <C-n> :NERDTreeToggle<CR>
" Find something with nerdtree
map <leader>r :NERDTreeFind<cr>
let NERDTreeIgnore = ['\.pyc$']

""" Autocomplete options
" Enable at startup
let g:deoplete#enable_at_startup = 1
