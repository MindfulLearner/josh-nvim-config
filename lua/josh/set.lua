-- settings

-- Imposta il tempo dopo il quale il comando CursorHold viene attivato
vim.o.updatetime = 1499

-- Attiva l'evidenziazione della ricerca
vim.o.hlsearch = true

-- Funzione che aggiorna la ricerca alla parola sotto il cursore
local function highlight_word_under_cursor()
	local word = vim.fn.expand('<cword>')
	vim.fn.setreg('/', '\\<' .. word .. '\\>')
end

-- Attiva la ricerca automatica di parole quando il cursore si ferma
vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	callback = highlight_word_under_cursor
})

-- Imposta un colore di sfondo contrastante per il cursore per migliorarne la visibilità
vim.api.nvim_set_hl(0, 'Cursor', { fg = 'white', bg = 'blue', bold = true })

-- Regola il colore di evidenziazione della ricerca per evitare conflitti visivi con il cursore
vim.api.nvim_set_hl(0, 'Search', { fg = 'black', bg = 'lightyellow' })


-- Imposta il tempo dopo il quale il comando CursorHold viene attivato
vim.o.updatetime = 1499

-- Attiva l'evidenziazione della ricerca
vim.o.hlsearch = true

-- Funzione che aggiorna la ricerca alla parola sotto il cursore
local function highlight_word_under_cursor()
	local word = vim.fn.expand('<cword>')
	vim.fn.setreg('/', '\\<' .. word .. '\\>')
end

-- Attiva la ricerca automatica di parole quando il cursore si ferma
vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	callback = highlight_word_under_cursor
})

-- Imposta un colore di sfondo contrastante per il cursore per migliorarne la visibilità
vim.api.nvim_set_hl(0, 'Cursor', { fg = 'white', bg = 'blue', bold = true })

-- Regola il colore di evidenziazione della ricerca per evitare conflitti visivi con il cursore
vim.api.nvim_set_hl(0, 'Search', { fg = 'black', bg = 'lightyellow' })

-- Settare vuoto 'guicursor' disabilita il cursore GUI in modo che non cambi forma o stile.
vim.opt.guicursor = ""

-- Abilita i numeri di riga e mostra i numeri di riga relativi alla posizione del cursore.
vim.opt.nu = true
vim.opt.relativenumber = true

-- Imposta la larghezza di un tab a 4 spazi.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
-- Imposta la larghezza dello spostamento (indentazione) a 4 spazi.
vim.opt.shiftwidth = 4
-- Converte i tab in spazi.
vim.opt.expandtab = true

-- Abilita l'indentazione automatica intelligente.
vim.opt.smartindent = true

-- Disabilita il ritorno a capo automatico del testo.
vim.opt.wrap = false

-- Disabilita il file di swap.
vim.opt.swapfile = false
-- Disabilita il backup del file.
vim.opt.backup = false
-- Imposta la directory per i file di undo.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Abilita i file di undo per permettere di annullare anche dopo il riavvio dell'editor.
vim.opt.undofile = true

-- Disabilita la ricerca evidenziata, ma mantiene la ricerca incrementale.
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Abilita il supporto colore migliorato nel terminale.
vim.opt.termguicolors = true

-- Imposta lo scrollo verticale offset a 8 righe.
vim.opt.scrolloff = 8
-- Mostra sempre la colonna dei segni.
vim.opt.signcolumn = "yes"
-- Aggiunge '@-@' ai caratteri ammessi nei nomi dei file.
vim.opt.isfname:append("@-@")

-- Imposta il tempo di aggiornamento dell'editor a 50 millisecondi per funzioni come completamento automatico e linting.
vim.opt.updatetime = 50

-- Evidenzia la colonna 80 per guidare la larghezza della riga.
vim.opt.colorcolumn = "80"

