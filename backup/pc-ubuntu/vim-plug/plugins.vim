" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

  " >>>> THEMES, COLORS:
	" status bar:
	" Plug 'itchyny/lightline.vim' " (confict) wiht bufferline
	Plug 'nvim-lualine/lualine.nvim'
	" themes:
	Plug 'folke/tokyonight.nvim'

  " >>>> NAVIGATION:
  " tree for files navigation:
  " :NvimTree____
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-tree/nvim-tree.lua'
  " Open files and finder
  " telescope need:$ sudo apt-get install ripgrep
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' } 
  " or { 'branch': '0.1.x' }
  Plug 'nvim-telescope/telescope-symbols.nvim'

  " tabs:
  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
  Plug 'famiu/bufdelete.nvim'

  " >>>> HIGHLIGHT:
  " :TS____
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " highlight scope, variable definition and navigation:
  Plug 'nvim-treesitter/nvim-treesitter-refactor'
  " select outer and inner node:
  Plug 'RRethy/nvim-treesitter-textsubjects'
  " Tendras varios colores en parentesis y llaves para que los identifiques
  Plug 'frazrepo/vim-rainbow'

  " Laravel Blade syntax highlighting
  Plug 'jwalton512/vim-blade'

  " Indent lines (The main engine)
  Plug 'lukas-reineke/indent-blankline.nvim'  
  " Indent lines with rainbow colors
  Plug 'TheGLander/indent-rainbowline.nvim'

  " >>>> COLORS:
  " Color highlighter
  Plug 'brenoprata10/nvim-highlight-colors'
  " Color picker
  Plug 'uga-rosa/ccc.nvim'

  " >>>> TERMINAL:
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

  " >>>> GIT:
  Plug 'lewis6991/gitsigns.nvim'

  " >>>> CODE:
  " autocomplete, manuals
  " coc ---> need install nodejs
  Plug 'neoclide/coc.nvim', {'branch' : 'release'}
  " comments
  Plug 'numToStr/Comment.nvim' "command on nomal mode is gcc
  " Con este plug puedes utilizar markdown dentro de nvim
  " (viejo) Plug 'plasticboy/vim-markdown'

  " Este plug te permite que puedas editar varias lineas de codigo a la vez
  Plug 'terryma/vim-multiple-cursors'

  " LARAVEL:
  " snippets for Laravel
  Plug 'honza/vim-snippets'
  " Ejecutar comandos de Laravel sin siquiera abrir toggleterm.
  Plug 'tpope/vim-dispatch' " Requerido para ejecución asíncrona
  Plug 'tpope/vim-projectionist' " Navegación inteligente (va de controller a vista, etc.)


  " FORTRAN:
  Plug 'rudrab/vimf90'


  " Previsualización de Markdown en el navegador
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }
  Plug 'MeanderingProgrammer/render-markdown.nvim' " need: nvim-treesitter and nvim-web-devicons

call plug#end()
