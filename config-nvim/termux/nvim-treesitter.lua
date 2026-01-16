require 'nvim-treesitter.configs'.setup{
  ensure_installed = {
  "angular","arduino","astro","awk",
  "bash","bibtex",
  "c","c_sharp","cpp","css","csv","diff", "dockerfile",
  "fortran","git_config","git_rebase","gitattributes","gitcommit","gitignore","gnuplot",
  "html",
  "javascript","jsdoc","json","json5",
  "lua",
  "markdown","markdown_inline","matlab",
  "nginx",
  "perl","php","python",
  "regex",
  "sql",
  "tmux","tsv","typescript","tsx",
  "vim","vimdoc"},
-- [[ "latex","jsx" --]]

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  refactor = {
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true,
    },

    highlight_current_scope = {
      enable = true,
    },

    smart_rename = {
      enable = true,
--[[
      keymaps = {
        smart_rename = "grr"
      },
--]]      
    },
    
    textsubjects = {
        enable = true,
        prev_selection = '<cr>', -- (Optional) keymap to select the previous selection
        keymaps = {
            [','] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
            ['i;'] = { 'textsubjects-container-inner', desc = "Select inside containers (classes, functions, etc.)" },
        },
    },
  },
}
