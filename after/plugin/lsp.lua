-- Inizializza e configura lsp-zero
local lsp = require("lsp-zero")

-- Usa le impostazioni consigliate
lsp.preset("recommended")

-- Carica i moduli necessari per il completamento
local cmp = require('cmp')
local luasnip = require('luasnip')

-- Carica i snippets di friendly-snippets
require("luasnip.loaders.from_vscode").lazy_load()

-- Configura le opzioni di selezione del completamento
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = cmp.mapping.preset.insert({
  -- Mappa Ctrl-p per selezionare l'elemento precedente
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  -- Mappa Ctrl-n per selezionare l'elemento successivo
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  -- Mappa Ctrl-y per confermare la selezione
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  -- Mappa Ctrl-Space per completare
  ["<C-Space>"] = cmp.mapping.complete(),
})

-- Configura cmp
cmp.setup({
  -- Configura l'espansione degli snippet
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  -- Configura le mappature
  mapping = cmp_mappings,
  -- Configura le sorgenti di completamento
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
    { name = 'path' },
    { name = 'nvim_lua' },
  })
})

-- Configura le mappature e le opzioni di attacco del client LSP
lsp.on_attach(function(_, bufnr) -- Rimosso 'client' poiché non è usato
  local opts = {buffer = bufnr, remap = false}

  -- Mappa gd per andare alla definizione
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  -- Mappa K per mostrare la documentazione
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  -- Mappa <leader>vws per simboli del workspace
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  -- Mappa <leader>vd per aprire il floating diagnostic
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  -- Mappa [d per andare al diagnostic successivo
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  -- Mappa ]d per andare al diagnostic precedente
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  -- Mappa <leader>vca per azioni di codice
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  -- Mappa <leader>vrr per riferimenti
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  -- Mappa <leader>vrn per rinominare
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  -- Mappa Ctrl-h in insert mode per l'aiuto della firma
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- Configura mason per gestire l'installazione dei server LSP
require('mason').setup({})

-- Configura mason-lspconfig per usare la configurazione predefinita
require("mason-lspconfig").setup({
    -- Disabilita ensure_installed per non installare automaticamente server
    automatic_installation = true, -- Installa automaticamente server LSP quando li imposti
})

-- Richiama LSPconfig
local lspconfig = require("lspconfig")

-- Configura automaticamente tutti i server installati tramite Mason
require("mason-lspconfig").setup_handlers({
    function(server_name)  -- La funzione predefinita per configurare tutti i server
        lspconfig[server_name].setup{}
    end
})



-- Applica la configurazione
lsp.setup()

