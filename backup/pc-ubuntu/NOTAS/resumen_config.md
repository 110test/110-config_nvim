# 🚀 Resumen de Configuración - Neovim v0.10.3

Tu configuración es **híbrida y modular**, combinando la estabilidad de Vimscript (`init.vim`) con la potencia moderna de Lua.

## 🏗️ Arquitectura
- **Punto de Entrada:** `init.vim` carga todos los módulos mediante `source` (`so`).
- **Gestor de Plugins:** `vim-plug`. Los plugins se descargan en `autoload/plugged`.
- **Motor de Inteligencia:** **CoC (Conquer of Completion)**. Gestiona LSPs (PHP, Python, JS, etc.) de forma similar a VS Code.
- **Resaltado de Sintaxis:** **Treesitter**. Proporciona un análisis semántico del código para colores más precisos.

## 🛠️ Componentes Clave
| Componente | Plugin | Descripción |
| :--- | :--- | :--- |
| **Explorador** | `nvim-tree` | Árbol de archivos lateral. |
| **Buscador** | `Telescope` | Buscador difuso (Fuzzy Finder) de archivos y texto. |
| **LSP / Autocompletado** | `coc.nvim` | Sugerencias de código, definiciones y errores en tiempo real. |
| **Línea de Estado** | `lualine` | Barra informativa inferior con modo y rama de Git. |
| **Pestañas** | `bufferline` | Gestión de archivos abiertos en la parte superior. |
| **Terminal** | `toggleterm` | Terminal integrada desplegable. |
| **Git** | `gitsigns` | Muestra cambios en el margen (gutter) y permite navegar por "hunks". |
| **Comentarios** | `Comment.nvim` | Atajos rápidos para comentar líneas o bloques. |

## 📁 Soporte de Lenguajes
- **PHP/Laravel:** Intelephense (vía CoC) y sintaxis Blade.
- **Web:** HTML, CSS, JavaScript, TypeScript, Angular, Astro.
- **Ciencia/Sistemas:** Python, Fortran, C/C++, Rust, SQL.
