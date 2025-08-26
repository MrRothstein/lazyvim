return {
  "sindrets/diffview.nvim",
  opts = {
    view = {
      merge_tool = {
        layout = "diff4_mixed",
        disable_diagnostics = true,
        winbar_info = true,
      },
    },
  },
  keys = {
    { "<leader>dvo", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
    { "<leader>dvh", "<cmd>DiffviewFileHistory<cr>", desc = "Open Diffview File History" },
    { "<leader>dvc", "<cmd>DiffviewClose<cr>", desc = "Close Diffview Tab" },
  },
}
