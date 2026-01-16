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
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'nvim-tree/nvim-web-devicons'
  " Open files and finder
  " telescope need:$ sudo apt-get install ripgrep
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
  " or                                , { 'branch': '0.1.x' }

  " tabs:
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
  Plug 'famiu/bufdelete.nvim'

  " >>>> HIGHLIGHT:
  " :TS____
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " highlight scope, variable definition and navigation:
  Plug 'nvim-treesitter/nvim-treesitter-refactor'
  " select outer and inner node:
  Plug 'RRethy/nvim-treesitter-textsubjects'
  " highlight sintax .blade.php
  Plug 'jwalton512/vim-blade'
  

  " >>>> TERMINAL:
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

  " >>>> GIT:
  Plug 'lewis6991/gitsigns.nvim'

  " >>>> CODE:
  " autocomplete, manuals
  " coc ---> need install nodejs
  Plug 'neoclide/coc.nvim', {'branch' : 'release'}
  " comments
  Plug 'numToStr/Comment.nvim' "command on nomal mode is gcc"

  " >>>> SNIPPETS: laravel, blade, etc.
  Plug 'honza/vim-snippets'
  
call plug#end()
