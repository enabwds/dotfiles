local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.o.guicursor = "n-v-c:block-Cursor/lCursor,i:blinkon1"
vim.opt.rtp:prepend(lazypath)
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon")
require("lazy").setup("plugins")
require("vim-options")

if vim.g.neovide then
  vim.o.guifont = "JetBrains Mono:h12"
end
