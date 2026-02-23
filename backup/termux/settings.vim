so ~/.config/nvim/maps.vim
so ~/.config/nvim/coc.vim


set rnu     " relative numbers lines.
set number  " show actual number line of the current line.


set hlsearch    " highlight matches.
set incsearch   " incremental searching.
set ignorecase  " searches are insensitive case...
set smartcase   " ... unless they contain at least one capital letter.

set clipboard=unnamedplus " to use the operating system clipboard.

" ==== Theme ====
" colorscheme elflord
" colorscheme koehler
" colorscheme vim
" colorscheme wildcharm
" colorscheme tokyonight
colorscheme tokyonight-night
" colorscheme tokyonight-storm
" colorscheme tokyonight-moon

set termguicolors   " from bufferline, nvim-web-devicons

" ==== Terminal ====
set hidden  " to save the state of terminals.

" ==== errors ===="
set signcolumn=yes " Reserva siempre el espacio para los iconos de error
set updatetime=300 " Reduce el tiempo de espera para que aparezcan los errores (de 4000ms a 300ms)
