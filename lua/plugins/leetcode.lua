return {
  "Dhanus3133/LeetBuddy.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("leetbuddy").setup({})
  end,
  keys = {
    { "<leader>mq", "<cmd>LBQuestions<cr>", desc = "List Questions" },
    { "<leader>ml", "<cmd>LBQuestion<cr>", desc = "View Question" },
    { "<leader>mr", "<cmd>LBReset<cr>", desc = "Reset Code" },
    { "<leader>mt", "<cmd>LBTest<cr>", desc = "Run Code" },
    { "<leader>ms", "<cmd>LBSubmit<cr>", desc = "Submit Code" },
  },
}
