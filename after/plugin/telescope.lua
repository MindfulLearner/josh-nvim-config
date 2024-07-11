local builtin = require('telescope.builtin')

-- cerca files direttamente 
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- files che sono in GIT search and all files search CTRL P
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- cerca direttamente le parole nei files
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("grep > ") });
end)


