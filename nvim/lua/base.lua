local g = vim.g
local o = vim.o
local opt = vim.opt

o.termguicolors = true

-- Editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = true
--o.signcolumn = "yes"
--o.cursorline = true

-- Tab Editing
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.cindent = true
o.wrap = true
o.autoindent = true

-- Buffer splitting
o.splitright = true
o.splitbelow = true

-- Fix clipboard
o.clipboard = "unnamedplus"


-- Map <leader> to space
g.mapleader = " "
g.maplocalleader = " "
