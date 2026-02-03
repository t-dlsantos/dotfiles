vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.number = true

-- vim.keymap.set("i", "<C-h>", "<C-w>", { noremap = true })
vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "delete whole word" })
