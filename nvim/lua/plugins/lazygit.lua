return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>gg",
      function()
        vim.cmd("LazyGit")
      end,
      desc = "Open LazyGit",
    },
  },
  config = function()
    -- optional settings
    vim.g.lazygit_floating_window_winblend = 0
    vim.g.lazygit_floating_window_scaling_factor = 0.9
  end,
}
