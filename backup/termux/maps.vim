" Usual commands:
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

" Tab navigation
nnoremap <C-t>q :Bdelete<CR>  " akinsho/bufferline
nnoremap <C-t>p :bprevious<CR>
nnoremap <C-t>n :bnext<CR>
nnoremap <C-t>o :tabnew<CR>
inoremap <C-t>o <Esc>:tabnew<CR>

"clear the search-highlight
nnoremap // :noh<CR>

" NvimTree
nnoremap <C-n>tr :NvimTreeToggle<CR>

" Terminal
tnoremap <Esc> <C-\><C-n>

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>
nnoremap <A-f> <cmd>Telescope grep_string<cr>
nnoremap <A-b> <cmd>Telescope buffers<cr>


" Abrir el machete en una división horizontal arriba
" Le damos un tamaño de 12 líneas para que no tape todo
nnoremap <leader>? :12split ~/.config/nvim/cheatsheet.txt<CR>
