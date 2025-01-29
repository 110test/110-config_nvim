so ~/.config/nvim/maps.vim
so ~/.config/nvim/vim-plug/plugins.vim
so ~/.config/nvim/coc.vim

so ~/.config/nvim/lua-tree.lua
so ~/.config/nvim/nvim-treesitter.lua
so ~/.config/nvim/toggleterm.lua
so ~/.config/nvim/bufferline.lua
so ~/.config/nvim/gitsigns.lua
so ~/.config/nvim/telescope.lua
so ~/.config/nvim/comment.lua
so ~/.config/nvim/lualine.lua

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
