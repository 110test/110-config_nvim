let g:coc_global_extensions = [ 'coc-blade','coc-emmet','coc-clangd','coc-css','coc-html','coc-json','coc-perl','coc-phpls','coc-prettier','coc-pyright','coc-sh','coc-texlab','coc-tsserver','coc-tslint','coc-tslint-plugin']
" Others: 'coc-markdownlint' pero me resulto muy molesto, muy estricto.
"         'coc-tailwindcss' -- funciona hasta la version v3, para Laravel quedó obsoleto ya que usa v4.
"                               Una mejor opcion es instalar TailwindCSS de forma global (-g) en la pc
"                                   sudo npm install -g @tailwindcss/language-server
"                                   tailwindcss-language-server --version
"                               y usar el servidor que tengo configurado en coc-settings.json.
"                               En nvim ejecutar `:CocList services` y verificar que dice: tailwindcss [running]
"                               Cada un par de mese ejecutar:
"                                   sudo npm install -g @tailwindcss/language-server@latest

" Mappings Go To's
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gR <Plug>(coc-references)

" Mappings Completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Mappings Diagnostics
nnoremap <silent> g, <Plug>(coc-diagnostic-prev)
nnoremap <silent> g. <Plug>(coc-diagnostic-next)

" Mappings Hover Documentation
nnoremap <silent> K :call ShowDocumentation()<CR>

" Mappings Code Actions
nnoremap ga <Plug>(coc-codeaction-cursor)

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
