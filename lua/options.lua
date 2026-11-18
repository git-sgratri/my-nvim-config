vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

-- Indentation
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.tabstop = 4           -- Number of spaces a tab represents
vim.opt.shiftwidth = 4        -- Number of spaces for auto-indent
vim.opt.softtabstop = 4       -- Number of spaces when pressing Tab
vim.opt.smartindent = true    -- Smart auto-indentation
vim.opt.autoindent = true     -- Copy indentation from the previous line
vim.opt.shiftround = true     -- Round indentation to multiples of shiftwidth
vim.opt.wrap = false

vim.opt.undofile = true
vim.opt.scrolloff = 4

vim.opt.termguicolors = true
 
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.backspace = "indent,eol,start"
vim.opt.mouse = "a"
vim.cmd.syntax("enable")
vim.cmd("filetype on")
