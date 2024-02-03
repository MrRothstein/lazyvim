return {
  "gptlang/CopilotChat.nvim",
  dependencies = { "zbirenbaum/copilot.lua" }, -- Or { "github/copilot.vim" }
  opts = {
    mode = "split", -- newbuffer or split, default: newbuffer
    show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
    debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
  },
  build = function()
    vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
  end,
  event = "VeryLazy",
  keys = {
    { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
    { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
    -- Those are available only on canary branch
    {
      "<leader>ccv",
      ":CopilotChatVsplitVisual",
      mode = "x",
      desc = "CopilotChat - Open in vertical split",
    },
    {
      "<leader>ccx",
      ":CopilotChatInPlace<cr>",
      mode = "x",
      desc = "CopilotChat - Run in-place code",
    },
  },
}
