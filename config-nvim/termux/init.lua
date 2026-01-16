-- ========================================================================== --
--                               CONFIGURACIÓN LUA                            --
-- ========================================================================== --

-- Cargar variable de entorno (Asegúrate de ponerla en tu ~/.bashrc)
vim.env.GEMINI_API_KEY = os.getenv("GEMINI_API_KEY") or "TU_KEY_AQUI"

-- 1. Instalar Lazy.nvim (Gestor de Plugins)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- 2. Configuración de Plugins
require("lazy").setup({
  -- AVANTE (IA)
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    build = "make",
    opts = {
      provider = "gemini",
      providers = {
        gemini = { model = "gemini-1.5-flash", max_tokens = 4096, temperature = 0 },
      },
      windows = { width = 45 },
      appearance = {
          use_icons = true,
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- LOS PLUGINS QUE TE FALTABAN (Añade aquí los de tu plugins.vim)
  { "nvim-tree/nvim-tree.lua", config = function() require("nvim-tree").setup() end },
  { "nvim-lualine/lualine.nvim", config = function() require("lualine").setup() end },
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons", config = function() require("bufferline").setup() end },
  { "numToStr/Comment.nvim", config = function() require("Comment").setup() end },
  { "akinsho/toggleterm.nvim", version = "*", config = function() require("toggleterm").setup() end },
  { "lewis6991/gitsigns.nvim", config = function() require("gitsigns").setup() end },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  
  -- COC.nvim (Sigue siendo útil para VimScript)
  { "neoclide/coc.nvim", branch = "release" },
  
  -- Tema TokyoNight
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },

  -- Nerd Font
  { "nvim-tree/nvim-web-devicons" },

  -- Render Markdown (Vista previa dentro de Neovim)
  -- Actualización de Treesitter (Importante)
  -- Para que este plugin funcione, Neovim debe entender la estructura del Markdown. Una vez que guardes el archivo y reinicies Neovim, ejecuta este comando dentro:
  -- :TSInstall markdown markdown_inline
  -- Dentro de Neovim, puedes escribir estos comandos en la línea de comandos:
  --​:RenderMarkdown toggle: Alterna entre activado y desactivado (el más útil).
  --​:RenderMarkdown enable: Activa el renderizado.
  --​:RenderMarkdown disable: Desactiva el renderizado (vuelve a ver el código Markdown puro).
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ft = { "markdown", "Avante" }, -- Se activa en archivos md y en el chat de Avante
    opts = {
      heading = {
        enabled = true,
        icons = { '1️⃣ ', '2️⃣ ', '3️⃣ ', '4️⃣ ', '5️⃣ ', '6️⃣ ' },
      },
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
    },
  },
})

-- 3. Cargar configuraciones de VimScript (Tu antiguo init.vim y mapas)
-- Esto carga tus settings.vim, maps.vim y coc.vim
vim.cmd('source ' .. vim.fn.stdpath('config') .. '/settings.vim')
