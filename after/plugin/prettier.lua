-- Carica il modulo 'null-ls' che fornisce un'interfaccia per collegare tool esterni come linter, formatter, etc.
local null_ls = require("null-ls")

-- Configura il setup di null-ls con le sorgenti da utilizzare.
null_ls.setup({
    sources = {
        -- Aggiunge Prettier come formatter per alcuni tipi di file (TypeScript, JavaScript, ecc.).
        null_ls.builtins.formatting.prettier.with({
            filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
        }),
    },
})

-- Imposta un'autocommand che esegue il formatting automatico del buffer prima di salvare file specifici.
-- Esegue la formattazione automatica usando la funzione 'vim.lsp.buf.format()' su questi tipi di file:
-- *.ts (TypeScript), *.jsx (JavaScript React), *.vue (Vue.js), *.tsx (TypeScript React), *.scss (Sass), *.json, *.md (Markdown).
vim.cmd([[autocmd BufWritePre *.ts,*.jsx,*.vue,*.tsx,*.scss,*.json,*.md lua vim.lsp.buf.format()]])

-- Imposta una mappatura di tastiera per normal mode. Premendo "<leader>p", si seleziona tutto il testo nel buffer
-- (gg va all'inizio del file, VG seleziona tutto, = applica l'indentazione corretta).
vim.api.nvim_set_keymap("n", "<leader>p", "ggVG=", { noremap = true, silent = true })

