require('nvim-highlight-colors').setup({
  render = 'background',  -- 'background' or 'foreground' or 'virtual'
  enable_named_colors = true, -- named colors, e.g. 'green'
  enable_var_usage = true, -- CSS variables, e.g. 'var(--testing-color)'
  enable_hsl_without_function = true, -- hsl colors without function  e.g. '--foreground: 0 69% 69%;'
  enable_tailwind = true, -- tailwind colors, e.g. 'bg-blue-500'
})
