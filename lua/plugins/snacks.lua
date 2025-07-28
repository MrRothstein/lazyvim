return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = false },
    image = { enabled = true },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { "node_modules", ".git" },
        },
        files = {
          hidden = true,
          ignored = true,
          exclude = { "node_modules", ".git" },
        },
      },
    },
    statuscolumn = { enabled = true },
  },
}
