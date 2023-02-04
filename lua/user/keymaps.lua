local opts = {noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

--Remap space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Nerd Tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Set split and vsplit
keymap("n", "<leader>]", ":vsplit<CR>", opts)
keymap("n", "<leader>-", ":split<CR>", opts)

-- Move auround window
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize window
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- switch buffer or tab
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-Tab>", ":tabprevious<CR>", opts)
keymap("n", "<C-t>", ":tabnew<CR>", opts)

-- make and open quickfix
keymap("n", "<leader>m", ":make<CR><CR>:copen<CR>", opts)

-- save and quit
keymap("n", "<leader>w", ":w!<CR>", opts)
keymap("n", "<leader>q", ":q!<CR>", opts)

-- telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", {})

-- native modif
keymap("n", "<leader>t", "<C-4>", opts)
