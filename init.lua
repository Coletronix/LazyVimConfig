local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " " 

local plugins = {
  -- {
  --   'glacambre/firenvim',
  --   lazy = not vim.g.started_by_firenvim,
  --   build = function()
  --     vim.fn["firenvim#install"](0)
  --   end
  -- },
  -- other plugin configurations go here...
}

local opts = {}  -- any additional options you want to pass

require("lazy").setup(plugins, opts)

-- Firenvim configuration for specific websites
-- vim.api.nvim_create_autocmd({'BufEnter'}, {
--     pattern = "*google.com_*",
--     command = [[inoremap <CR> <Esc>:w<CR>:call firenvim#press_keys("<LT>CR>")<CR>ggdGa]],
-- })

-- vim.api.nvim_create_autocmd({'BufEnter'}, {
--     pattern = "*chat.openai.com_*",
--     command = [[inoremap <CR> <Esc>:w<CR>:call firenvim#press_keys("<LT>CR>")<CR>ggdGa]],
-- })

-- vim.api.nvim_create_autocmd({'TextChanged', 'TextChangedI'}, {
--     nested = true,
--     command = "write",
-- })

vim.cmd('source /home/cole/.config/nvim/initold.vim')