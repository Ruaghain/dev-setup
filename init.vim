" TODO: 
" 1. Mapping for tabs (navigate, new, close)
" 2. Close terminal
" 3. Mapping for Git
" 4. Install projectionist and get working with tests for react.
" 5. Go to class and method definitions
"
" MAPPINGS:
" ALT-1: Toggle Tree
" CTRL-e: Recent Files
" CTRL-f: Find Files
" CTRL-n: Terminal

set updatetime=100
set signcolumn=yes
set number
set relativenumber
set guifont=DroidSansMono\ Nerd\ Font\ 12

set backup
set backupdir=~/.local/share/nvim/backup//

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" use the nord theme
Plug 'arcticicestudio/nord-vim'

source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/git.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/typescript.vim
source ~/.config/nvim/plugins/javascript.vim
source ~/.config/nvim/plugins/styling.vim
source ~/.config/nvim/plugins/json.vim
source ~/.config/nvim/plugins/commenter.vim
source ~/.config/nvim/plugins/tree.vim
source ~/.config/nvim/plugins/projectionist.vim
source ~/.config/nvim/plugins/test.vim

call plug#end()

" Theme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme nord

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
" let g:NERDTreeIgnore = []
" let g:NERDTreeStatusline = '' 

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction

" Reselet viual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Personal favourite mappings
let mapleader = " "

nmap <leader>ve :edit ~/.config/nvim/init.vim<CR>
nmap <leader>vr :source ~/.config/nvim/init.vim<CR>

nnoremap <leader>ee :History<CR>
nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? 'NERDTree<CR>' : ':NERDTreeFind<CR>'
nnoremap <leader>N :NERDTreeFind<CR>
nnoremap <C-f> :FZF<CR>

" Git mappings
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gl :Git log<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gr :Git rebase -i<CR>
nnoremap <leader>ga :Git add .<CR>

" let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-s': 'split',
"  \ 'ctrl-v': 'vsplit'
"  \
"}
nmap <leader>x :!xdg-open %<CR><CR>
map <leader>ef :edit <cfile><CR>
nnoremap <leader>et :call OpenTerminal()<CR>

" set background=dark

" Spaces & Tabs 
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" allows for the ignoring of node_modules and .gitignore files when using fzf
let $FZF_DEFAULT_COMMAND = 'ag -g "" --ignore-dir={node_modules,data,gradle}'

" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" airline options
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" let g:airline_theme = 'tender'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0
