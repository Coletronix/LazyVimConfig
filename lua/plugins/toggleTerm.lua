return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        size = 12,
        direction = "horizontal",
        -- highlights = {
        --   -- highlights which map to a highlight group name and a table of it's values
        --   Normal = {
        --     guibg = "#000000",
        --   },
        --   NormalFloat = {
        --     link = "Normal",
        --   },
        --   FloatBorder = {
        --     guifg = "#000000",
        --     guibg = "#000000",
        --   },
        -- },
      })
    end,
    autochdir = true, -- when neovim changes it current directory the terminal will change it's own when next it's opened
    keys = {
      {
        "<Leader>t",
        function()
          require("toggleterm").toggle(vim.v.count1)
        end,
      },
    },
    lazy = false,
  },
}
