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
so ~/.config/nvim/highlight-colors.lua
so ~/.config/nvim/ccc.lua

set mouse=a     " Con esta opción cuando copiemos desde la terminal deslizando el ratón por el texto del fichero no se copiarán los números de línea

set autoindent  " Aplica identacion automatica en vim
set smartindent " Aplica identacion de acuerdo al lenguaje

set tabstop=2   " Indica cuántos espacios tiene una tabulación
set shiftwidth=2 " Indica el nº de espacios para una indentación
set expandtab " Con esta opcion agregaremos caracteres en lugar de Tab cuando presionemos tabular

set numberwidth=1 " Columnas para la line de numeros

set clipboard=unnamed " Copia al portapapeles

syntax enable   " Te remarca la sintaxis

set showcmd     " Te muestra el historial

set ruler       " Te muestra en que linea estas

set cursorline  " Resalta la linea en la pantalla
set encoding=utf-8  " Acepta los caracteres especiales como la ñ
set showmatch " Resalta los corchetes

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
colorscheme tokyonight
" colorscheme tokyonight-night
" colorscheme tokyonight-storm
" colorscheme tokyonight-moon

set termguicolors   " from bufferline, nvim-web-devicons

" ==== Terminal ====
set hidden  " to save the state of terminals.


" ==== Laravel / PHP Config ====
" Definir archivos .blade.php como tipo 'blade'
autocmd BufNewFile,BufRead *.blade.php set filetype=blade

" Permitir que los archivos blade usen comentarios html
autocmd FileType blade setlocal commentstring={{--%s--}}

" Configurar identación para PHP (PSR-12 standard suele ser 4 espacios, pero Laravel acepta 2 o 4)
" Si prefieres seguir el estándar estricto de PHP cambia esto, si no, déjalo como lo tienes (2 espacios).
" autocmd FileType php setlocal shiftwidth=4 tabstop=4
"
"
" ==== MARKDOWN ====
" --- Configuración para Render Markdown ---
lua << EOF
require('render-markdown').setup({
    -- Aquí puedes dejarlo vacío para la configuración por defecto
    -- o copiar la configuración que tengas en tu celular.
})
EOF
" se oculten los símbolos de formato
" Nota: Esto puede ser confuso al principio porque el texto "se mueve" cuando pones el cursor encima.
set conceallevel=2


" ==== LARAVEL ====
" Laravel Projectionist: Jump between Controller and View
let g:projectionist_heuristics = {
  \   'app/Http/Controllers/*Controller.php': {
  \       'type': 'controller',
  \       'alternate': 'resources/views/{}.blade.php'
  \   },
  \   'resources/views/*.blade.php': {
  \       'type': 'view',
  \       'alternate': 'app/Http/Controllers/{}Controller.php'
  \   }
  \ }

" Shortcut: Press \a (leader + a) to jump to the 'alternate' file
nnoremap <leader>a :A<CR>


" ==== INDENT RAINBOW LINE ====
" Configuration for Indent Blankline + Rainbow Colors
lua << EOF
local highlight = {
    "RainbowBlue",
    "RainbowPurple",
    "RainbowCyan",
    "RainbowGreen",
    "RainbowYellow",
    "RainbowOrange",
}

local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    -- Aquí definimos tanto el frente (fg) como el fondo (bg)
    -- Bajamos un poco la intensidad del fondo para que no oculte el texto
    vim.api.nvim_set_hl(0, "RainbowBlue",   { fg = "#82aaff", bg = "#1e223a" })
    vim.api.nvim_set_hl(0, "RainbowPurple", { fg = "#c099ff", bg = "#25213a" })
    vim.api.nvim_set_hl(0, "RainbowCyan",   { fg = "#86e1fc", bg = "#1e283a" })
    vim.api.nvim_set_hl(0, "RainbowGreen",  { fg = "#c3e88d", bg = "#232d26" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#ffc777", bg = "#2d2a23" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#ff966c", bg = "#2d2421" })
end)

require("ibl").setup { 
    indent = { 
        -- Usamos el caracter de bloque completo para el efecto de columna
        char = "▎", 
        highlight = highlight,
    },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false }
}
EOF
