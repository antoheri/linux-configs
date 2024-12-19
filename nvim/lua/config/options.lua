-- Taille des tabulations
vim.opt.tabstop = 4         -- Définit la largeur d'une tabulation à 4 espaces
vim.opt.shiftwidth = 4      -- Définit l'indentation à 4 espaces
vim.opt.expandtab = true    -- Remplacer les tabulations par des espaces
vim.opt.softtabstop = 4     -- Définit que chaque pression de tabulation insère 4 espaces


-- Afficher les numéros de lignes relatifs
vim.opt.relativenumber = true

-- Définiton des mappings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Netrw" })
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")


