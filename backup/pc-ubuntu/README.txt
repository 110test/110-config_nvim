~/.config/nvim/init.vim
~/.config/nvim/maps.vim
~/.config/nvim/nvim-plug/
~/.config/nvim/nvim-plug/plugins.vim
~/.config/nvim/theme/

install Nerd Fonts on /usr/share/fonts
from https://www.nerdfonts.com/font-downloads

~/.config/nvim/lua-tree.lua
:NvimTreeToogle
panel move left: <C-w>l
panel move right: <C-w>h


FORTRAN:
git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig

TailwindCSS: (ver coc.vim)
Instalar el LSP de forma global (-g) en la pc para que no haya incompatibilidad con Laravel/Vite que usan Tailwind v4.
  sudo npm install -g @tailwindcss/language-server
  tailwindcss-language-server --version
y usar el servidor que tengo configurado en coc-settings.json.
En nvim ejecutar `:CocList services` y verificar que dice: tailwindcss [running]
Cada un par de mese ejecutar:
  sudo npm install -g @tailwindcss/language-server@latest
