# ⌨️ Guía de Atajos - Neovim

## Navegación de Archivos

- `<Ctrl-p>` : Buscar archivos por nombre (Telescope).
- `<Ctrl-f>` : Buscar texto en todo el proyecto (Grep).
- `<Alt-f>`  : Buscar la palabra bajo el cursor en el proyecto.
- `<Alt-b>`  : Listar buffers (archivos) abiertos.
- `<Ctrl-n>tr` : Abrir/Cerrar explorador de archivos (NvimTree).

## Gestión de Buffers (Pestañas)

- `<Ctrl-t>n` : Siguiente pestaña/buffer.
- `<Ctrl-t>p` : Pestaña/buffer anterior.
- `<Ctrl-t>q` : Cerrar buffer actual (sin cerrar Neovim).
- `<Ctrl-t>o` : Abrir una pestaña de sistema nueva (Tab).

## Inteligencia de Código (CoC)

- `gd` : Ir a la **definición** (Great for Laravel classes!).
- `gy` : Ir a la definición de tipo.
- `gi` : Ir a la implementación.
- `gR` : Ver todas las referencias.
- `K`  : Mostrar documentación (Hover).
- `ga` : Acciones de código (Code Actions).
- `g,` / `g.` : Error de diagnóstico anterior / siguiente.
- `<Tab>` : Navegar sugerencias / Confirmar.
- `<Ctrl-Space>` : Forzar apertura de autocompletado.

## Edición General

- `<Ctrl-s>` : Guardar archivo.
- `<Ctrl-q>` : Salir / Cerrar.
- `//` : Limpiar el resaltado de búsqueda.
- `gcc` : Comentar/Descomentar línea (Normal mode).
- `gc` : Comentar/Descomentar selección (Visual mode).

## Terminal e Interfaz

- `<Ctrl-j>` : Abrir/Cerrar terminal integrada.
- `<Esc>` : (Dentro de terminal) Salir al modo normal para navegar el texto.

## Git (Gitsigns)

- `gf` : Ir al siguiente cambio (hunk).
- `gb` : Ir al cambio anterior.
- `gp` : Previsualizar el cambio en una ventana flotante.
- `gr` : Resetear el cambio (hunk) bajo el cursor.
- `<leader>hs` : Stagear (añadir) cambio actual.
- `<leader>tb` : Activar/Desactivar línea de autor (Git Blame).
