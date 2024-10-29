return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    view_options = {
      show_hidden = true,
    },
    columns = {
      "icon",
      "permissions",
      "size",
      "mtime",
    },
  },
  keys = {
    { "-", ":Oil<CR>", mode = "n", desc = "Open prent directory with Oil" },
  },
}
