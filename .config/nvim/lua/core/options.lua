-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local g = vim.g     -- Global variables
local opt = vim.opt -- Set options (global/buffer/windows-scoped)


opt.number = true
opt.ignorecase = true -- Ignore case letters when search
opt.tabstop = 4
opt.expandtab = true  -- Spaces instead of tabs when tab key is pressed
opt.shiftwidth = 4
