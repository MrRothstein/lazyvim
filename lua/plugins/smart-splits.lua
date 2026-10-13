return {
  "smart-splits-nvim/smart-splits.nvim",
  version = "^3.0.0",
  lazy = false,
  opts = { -- Plugin Configuration
    mux = {
      backend = "smart-splits-backend-kitty",
    },
  },
  dependencies = {
    {
      "smart-splits-nvim/backend-kitty",
      module = "smart-splits-backend-kitty",
      opts = {
        -- Set false to force detect() to fail without uninstalling the plugin.
        enable = true,

        -- Remote-control password. When unset, falls back to
        -- vim.g.smart_splits_kitty_password.
        -- https://sw.kovidgoyal.net/kitty/conf/#opt-kitty.remote_control_password
        password = nil,

        -- Which edges may create a Kitty split when move.at_edge is 'split'.
        split = {
          left = true,
          right = true,
          up = true,
          down = true,
        },

        -- Kitty's stack layout is its zoom/fullscreen.
        zoom = {
          block_nav = false, -- refuse move and resize while the tab layout is 'stack'
        },
      },
    },
  },
  keys = {
    {
      "<A-h>",
      function()
        require("smart-splits").resize_left()
      end,
      mode = "n",
      desc = "Resize tab left",
    },
    {
      "<A-j>",
      function()
        require("smart-splits").resize_down()
      end,
      mode = "n",
      desc = "Resize tab down",
    },
    {
      "<A-k>",
      function()
        require("smart-splits").resize_up()
      end,
      mode = "n",
      desc = "Resize tab up",
    },
    {
      "<A-l>",
      function()
        require("smart-splits").resize_right()
      end,
      mode = "n",
      desc = "Resize tab right",
    },
    {
      "<C-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
      mode = "n",
      desc = "Move cursor to left tab",
    },
    {
      "<C-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
      mode = "n",
      desc = "Move cursor to down tab",
    },
    {
      "<C-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
      mode = "n",
      desc = "Move cursor to up tab",
    },
    {
      "<C-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
      mode = "n",
      desc = "Move cursor to right tab",
    },
    {
      "<C-\\>",
      function()
        require("smart-splits").move_cursor_previous()
      end,
      mode = "n",
      desc = "Move cursor to previous tab",
    },
    {
      "<leader><leader>h",
      function()
        require("smart-splits").swap_buf_left()
      end,
      mode = "n",
      desc = "Swap tab left",
    },
    {
      "<leader><leader>j",
      function()
        require("smart-splits").swap_buf_down()
      end,
      mode = "n",
      desc = "Swap tab down",
    },
    {
      "<leader><leader>k",
      function()
        require("smart-splits").swap_buf_up()
      end,
      mode = "n",
      desc = "Swap tab up",
    },
    {
      "<leader><leader>l",
      function()
        require("smart-splits").swap_buf_right()
      end,
      mode = "n",
      desc = "Swap tab left",
    },
  },
}
