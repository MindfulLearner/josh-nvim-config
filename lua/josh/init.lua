-- attiva remap.lua che continee uno shortcut o piu shortcut
require("josh.remap")

-- seconda attivazione per confermare la chiamata di Josh e attiva init.lua di josh contenente altre chiamate su josh.remap esempio
print("conferma entrata su NVIM in dimanet")

-- Carica i plugin gestiti da packer
-- require('josh.packer')

-- settiungs nvim
require("josh.set")



<<<<<<< HEAD
=======
-- setup per vue 
vim.api.nvim_command([[
  autocmd FileType vue setlocal filetype=html
  autocmd FileType typescript setlocal filetype=typescript
  autocmd FileType tsx setlocal filetype=typescriptreact
]])
>>>>>>> 94e06363c1fed9f1adb83f1f0f379b0638f47f63

