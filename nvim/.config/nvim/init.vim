let mapleader =","

if ! filereadable(system('echo -n "$HOME/.config/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p $HOME/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > $HOME/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "$HOME/.config/nvim/plugged"'))
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'ianding1/leetcode.vim'
call plug#end()

syntax on
colorscheme gruvbox
let g:airline_theme='term'

set encoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4


" Line numbers
set number


" Latex stuff
autocmd VimLeave *.tex !texclear.sh %
map <leader>p :!oopt.sh <c-r>%<CR>
map <leader>c :w! \| !compiler.sh <c-r>%<CR>

" ycm

" leetcode
let g:leetcode_browser='firefox'
let g:leetcode_solution_filetype='cpp'
let g:leetcode_hide_paid_only=1
let g:leetcode_hide_companies=1
