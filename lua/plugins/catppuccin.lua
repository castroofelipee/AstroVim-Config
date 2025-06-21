return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- sabores: latte, frappe, macchiato, mocha
        background = { -- configura fundo claro/escuro automático
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          notify = true,
          treesitter = true,
          -- adicione mais integrações se quiser
        },
      })
      vim.cmd("colorscheme catppuccin")
    end,
  },
}

