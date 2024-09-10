-- attiva remap.lua che continee uno shortcut o piu shortcut
require("josh.remap")

-- seconda attivazione per confermare la chiamata di Josh e attiva init.lua di josh contenente altre chiamate su josh.remap esempio
print("conferma entrata su NVIM in dimanet")

-- Carica i plugin gestiti da packer
-- require('josh.packer')

-- settiungs nvim
require("josh.set")



-- setup per VUE
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.vue",
  callback = function()
    -- Imposta 'html' per la parte template
    vim.api.nvim_command([[
      syntax region vueTemplate start=+<template>+ end=+</template>+ contains=@html
    ]])
    
    -- Imposta 'javascript' o 'typescript' per la parte script
    vim.api.nvim_command([[
      syntax region vueScript start=+<script>+ end=+</script>+ contains=@javascript
    ]])
    
    -- Imposta 'css' o 'scss' per la parte style (puoi modificare in base a ciò che ti serve)
    vim.api.nvim_command([[
      syntax region vueStyle start=+<style>+ end=+</style>+ contains=@css
    ]])
  end
})

