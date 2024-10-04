local lspconfig = require('lspconfig')

lspconfig.html.setup({
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'tsx', 'jsx', 'vue' },
})


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').html.setup {
  capabilities = capabilities,
}

