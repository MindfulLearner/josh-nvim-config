-- Print iniziale per confermare attivazione dell'init di NVIM

print("learner start..")

-- richiama la directory josh contenenti i lua delle mie configurazioni
require('josh')

-- numeri relativi
vim.opt.relativenumber = true


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



