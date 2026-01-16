# 🚀 Mi Configuración de Neovim en Termux

Esta es la lista de plugins instalados y gestionados mediante **Lazy.nvim**, optimizada para el desarrollo móvil y productividad.

---

## 🛠️ Core & Gestión
* **lazy.nvim**: El gestor de plugins. Es el corazón de la configuración, encargado de cargar los complementos de forma asíncrona para que Neovim inicie rápido.
    * *Comando:* `:Lazy` para ver el estado y actualizar.

---

## 🤖 Inteligencia Artificial (IA)
* **avante.nvim**: Un plugin que emula la experiencia de "Cursor AI". Permite chatear con el código y aplicar cambios sugeridos automáticamente.
* **dressing.nvim**: Mejora visual para los inputs y selectores de Neovim. Es utilizado por Avante para mostrar interfaces más limpias.
* **nui.nvim**: Librería de componentes de interfaz (ventanas flotantes, layouts). Es una dependencia técnica para plugins modernos de IA.

---

## 🔍 Navegación y Búsqueda
* **telescope.nvim**: Buscador difuso (fuzzy finder). Sirve para encontrar archivos, buscar texto dentro de ellos o navegar por el historial.
    * *Uso común:* `:Telescope find_files` o `:Telescope live_grep`.
* **nvim-tree.lua**: Explorador de archivos lateral. Permite gestionar carpetas y archivos visualmente.
    * *Uso común:* `:NvimTreeToggle`.
* **plenary.nvim**: Una librería de funciones en Lua indispensable para que Telescope y otros plugins funcionen.

---

## 💻 Desarrollo y Lenguajes (LSP)
* **coc.nvim**: Motor de autocompletado y soporte de lenguajes. Proporciona sugerencias inteligentes, análisis de errores y definiciones de funciones (similar a VS Code).
* **nvim-treesitter**: Motor de análisis sintáctico. Mejora drásticamente el resaltado de colores del código y permite entender la estructura del mismo.
* **Comment.nvim**: Facilita comentar y descomentar líneas.
    * *Uso:* `gcc` (línea actual) o `gc` (en modo visual).
* **toggleterm.nvim**: Terminal integrada que puedes abrir y cerrar sin salir de tu archivo actual.
    * *Uso:* Ideal para ejecutar scripts o comandos rápidos.

---

## 🎨 Interfaz y Estética
* **tokyonight.nvim**: El esquema de colores principal (tema oscuro con tonos neón).
* **bufferline.nvim**: Barra superior que muestra los archivos abiertos como pestañas de navegador.
* **lualine.nvim**: Barra de estado inferior elegante con información del modo de edición, rama de Git y tipo de archivo.
* **nvim-web-devicons**: Proporciona iconos de colores para archivos y carpetas en toda la interfaz.

---

## 📈 Integración con Git
* **gitsigns.nvim**: Muestra indicadores en el margen izquierdo sobre cambios en el archivo (añadido, modificado o borrado) respecto al último commit de Git.

---

> **Nota:** Esta configuración fue generada para el entorno **Termux**. Si necesitas añadir un plugin nuevo, agrégalo a tu archivo `init.lua` y Lazy lo detectará automáticamente al reiniciar.

