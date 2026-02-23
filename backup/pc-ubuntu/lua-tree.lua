-- 1. Initialize the web devicons first
require("nvim-web-devicons").setup({
  default = true, -- gives a default icon to unknown files
  override = {
    css = {
      icon = "", -- This is the \ue749 character!
      color = "#563d7c",
      cterm_color = "39",
      name = "Css"
    }
  }
})

-- 2. Setup nvim-tree and force it to use the devicons
require("nvim-tree").setup({
  renderer = {
    icons = {
      web_devicons = {
        file = {
          enable = true,
          color = true,
        },
      },
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
})
