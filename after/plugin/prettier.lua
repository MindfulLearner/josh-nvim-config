local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier.with({
            filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" }, 
        }),
    },
})

vim.cmd([[autocmd BufWritePre *.ts,*.jsx,*.tsx,*.scss,*.json,*.md lua vim.lsp.buf.format()]])


vim.api.nvim_set_keymap("n", "<leader>p", "ggVG=", { noremap = true, silent = true })
