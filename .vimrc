" ~/.vimrc

" Automatic installation of vim-plug (plugin manager)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin definitions
call plug#begin('~/.vim/plugged')

" Color scheme plugin
Plug 'Badacadabra/vim-archery'

" Spash screen plugin
Plug 'mhinz/vim-startify'

" status bar plugin
Plug 'vim-airline/vim-airline'
let g:airline_theme = 'archery'

call plug#end()

" Basic configuration
set nocompatible            " Disable vi compatibility
syntax enable               " Enable syntax processing
colorscheme archery         " Set color scheme

" Visual settings
set number                  " Show line numbers
set relativenumber          " Show relative line numbers
set cursorline              " Highlight current line
set showmatch               " Highlight matching parenthesis
set termguicolors           " Enable true color support

" Indentation
set tabstop=4               " Number of spaces per TAB
set softtabstop=4           " Number of spaces in tab when editing
set shiftwidth=4            " Number of auto-indent spaces
set expandtab               " Use spaces instead of tabs
set autoindent              " Auto-indent new lines

" Search settings
set incsearch               " Search as characters are entered
set hlsearch                " Highlight matches
set ignorecase              " Case-insensitive search
set smartcase               " Case-sensitive if search contains uppercase

" Interface
set mouse=a                 " Enable mouse support
set scrolloff=8             " Minimum lines to keep above/below cursor
set splitbelow              " Horizontal splits open below
set splitright              " Vertical splits open to the right

" File handling
set hidden                  " Allow buffer switching without saving
set autoread                " Reload files changed outside Vim

" Key mappings
nnoremap <silent> <C-l> :nohl<CR><C-l> " Clear search highlights with Ctrl+l

" Plugin configuration (add your plugin settings here)

" After installation, run :PlugInstall to install plugins
" Restart Vim after installation for color scheme to take effect
