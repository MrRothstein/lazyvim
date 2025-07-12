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
    keymaps = {
      ["<C-s>"] = { "actions.select", opts = { vertical = true, close = true } },
      ["<C-h>"] = { "actions.select", opts = { horizontal = true, close = true } },
    },
  },
  keys = {
    { "-", ":Oil<CR>", mode = "n", desc = "Open prent directory with Oil" },
  },
  lazy = false,
}
