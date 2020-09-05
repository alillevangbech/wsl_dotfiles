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
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

"if executeable('clangd')
"	au User lsp_setup call lsp#register_server({
"		\ 'name': 'clangd',
"		\ 'cmd': {server_info->['clangd', '-background-index']},
"		\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
"		\	})
"endif

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


