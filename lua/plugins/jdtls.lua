return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-11",
                path = "~/.sdkman/candidates/java/11.0.21-tem/",
              },
              {
                name = "JavaSE-17",
                path = "~/.sdkman/candidates/java/17.0.9-tem/",
              },
              {
                name = "JavaSE-21",
                path = "~/.sdkman/candidates/java/21-tem/",
              },
            },
          },
        },
      },
    },
  },
}
