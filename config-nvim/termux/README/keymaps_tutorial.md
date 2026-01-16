# ⌨️ Guía de Atajos Neovim (Termux)

Esta guía resume la configuración personalizada de Neovim detectada en tus archivos.

---

## 📌 Configuración Base
* **Tecla Líder (`<leader>`):** No definida (por defecto es `\`).
* **Gestor de Plugins:** `Lazy.nvim`.
* **Tema Visual:** `tokyonight-night`.

---

## 🚀 Atajos del Sistema y Navegación (`maps.vim`)

| Atajo | Acción | Descripción |
| :--- | :--- | :--- |
| `Ctrl + s` | Guardar | Ejecuta `:w` |
| `Ctrl + q` | Salir | Ejecuta `:q` |
| `//` | Limpiar Búsqueda | Quita el resaltado amarillo de las palabras buscadas |
| `Ctrl + j` | Terminal | Abre/Cierra la terminal flotante (`toggleterm`) |
| `Esc` | Modo Normal | Dentro de la terminal, permite navegar por el texto |

---

## 📂 Gestión de Archivos y Telescope

| Atajo | Acción | Plugin |
| :--- | :--- | :--- |
| `Ctrl + n` + `t` + `r` | Explorador de Archivos | Abre/Cierra `NvimTree` |
| `Ctrl + p` | Buscar Archivo | Busca archivos por nombre en el proyecto |
| `Ctrl + f` | Buscar Texto | Busca palabras dentro de los archivos (Grep) |
| `Alt + f` | Palabra actual | Busca la palabra bajo el cursor en todo el proyecto |
| `Alt + b` | Listar Buffers | Muestra una lista de archivos abiertos |

---

## 📑 Control de Buffers (Pestañas)

| Atajo | Acción | Descripción |
| :--- | :--- | :--- |
| `Ctrl + t` + `n` | Siguiente | Salta al siguiente archivo abierto |
| `Ctrl + t` + `p` | Anterior | Salta al archivo anterior |
| `Ctrl + t` + `q` | Cerrar Buffer | Cierra el archivo actual (sin cerrar Neovim) |
| `Ctrl + t` + `o` | Nueva Pestaña | Crea un espacio de trabajo vacío |

---

## 🛠️ Inteligencia de Código (CoC.nvim)

| Atajo | Acción | Función |
| :--- | :--- | :--- |
| `gd` | Definition | Ir a la definición de la función/variable |
| `gy` | Type Definition | Ir a la definición del tipo |
| `gi` | Implementation | Ir a la implementación |
| `gR` | References | Listar donde se usa esa palabra |
| `K` | Hover | Muestra documentación en una ventana flotante |
| `ga` | Code Action | Sugerencias de corrección (Quickfix) |
| `Tab` | Autocompletar | Navegar y confirmar sugerencias |
| `g,` / `g.` | Diagnósticos | Saltar al error anterior o siguiente |

---

## 🌿 Git (Gitsigns)

| Atajo | Acción | Función |
| :--- | :--- | :--- |
| `gf` / `gb` | Next/Prev Hunk | Salta entre cambios de Git en el archivo |
| `gp` | Preview Hunk | Muestra qué cambió en una ventana pequeña |
| `gr` | Reset Hunk | Deshace el cambio en la línea actual |
| `<leader>hb` | Blame | Muestra quién y cuándo editó la línea |
| `<leader>td` | Toggle Deleted | Muestra las líneas que han sido borradas |

---

## 🤖 Plugins Especiales
* **Avante (IA):** Usa `<leader>aa` para abrir el chat con Gemini.
* **Comment:** Usa `gcc` para comentar una línea y `gc` en modo visual para bloques.
* **Render-Markdown:** Usa `:RenderMarkdown toggle` para ver el diseño final de tus notas.

---

## 💡 Sugerencias para agregar a `maps.vim`

Copia esto en tu archivo de mapas si quieres mejorar la fluidez:

```vim
" Mover líneas arriba/abajo con Alt + j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

" Mantener selección al indentar con > o <
vnoremap < <gv
vnoremap > >gv
