-- Imposta il tasto leader per le scorciatoie di tastiera su spazio.
vim.g.mapleader = " "

-- Mappatura per aprire l'esploratore di file con <leader>pv.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Permette di spostare il testo selezionato in modalità visiva verso il basso con J.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Permette di spostare il testo selezionato in modalità visiva verso l'alto con K.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Unisce la riga corrente con la successiva senza spazi aggiuntivi e ripristina la posizione del cursore.
vim.keymap.set("n", "J", "mzJ`z")
-- Scorre verso il basso mantenendo il cursore al centro dello schermo.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- Scorre verso l'alto mantenendo il cursore al centro dello schermo.
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Ricerca in avanti mantenendo il cursore al centro dello schermo.
vim.keymap.set("n", "n", "nzzzv")
-- Ricerca all'indietro mantenendo il cursore al centro dello schermo.
vim.keymap.set("n", "N", "Nzzzv")
-- Riavvia i Language Server Plugins con il comando <leader>zig.
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Avvia una sessione di VimWithMe.
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
-- Ferma la sessione di VimWithMe.
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- La migliore riassegnazione di tasti: rimuove e incolla in modalità visuale.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copia nel clipboard del sistema in modalità normale e visuale con <leader>y.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- Copia la linea corrente nel clipboard del sistema.
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Taglia nel registro nero (senza conservare nei registri di Vim).
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Sostituisce Ctrl+c con Esc in modalità inserimento.
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disabilita il comando Q in modalità normale.
vim.keymap.set("n", "Q", "<nop>")
-- Apre un nuovo tmux window con sessionizer.
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Formatta il buffer con LSP.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Scorre i messaggi di errore del compilatore in avanti e indietro.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Prepara la sostituzione di testo basata sulla parola sotto il cursore.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Rende eseguibile il file corrente.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Inserisce un blocco di gestione degli errori in Go.
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- Apri il file di configurazione di packer per NVim.
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/josh/packer.lua<CR>");
-- Esegue un effetto visivo chiamato "make it rain" tramite un plugin.
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Ricarica il file di configurazione corrente.
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
