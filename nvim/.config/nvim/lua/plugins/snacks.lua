return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        layout = {
          width = 0.95,
          height = 0.95,
        },
      },
      exclude = {
        ".git",
        "node_modules",
        "bin",
        "obj",
      },
      sources = {
        explorer = {
          layout = {
            layout = {
              -- must specify width or else it inheritate from picker
              -- in this example, width can be 0.95
              width = 0.3,
              position = "left",
            },
          },
          win = {
            list = {
              wo = {
                number = true,
                relativenumber = true,
              },
            },
          },
        },
      },
    },
  },
}
