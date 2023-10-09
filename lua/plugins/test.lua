return {
  { "nvim-neotest/neotest-jest" },
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-plenary",
        ["neotest-jest"] = {
          jestCommand = "npm test --",
          jestConfigFile = "package.json",
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        },
      },
    },
  },
}
