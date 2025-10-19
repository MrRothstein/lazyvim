return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = false },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { "node_modules", ".git" },
        },
      },
    },
  },
}
