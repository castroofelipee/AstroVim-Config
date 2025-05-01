return {
  -- Desabilita o Mason se quiser
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- configurações simples (ou pode usar handlers abaixo)
      html = {},
      cssls = {},
      tailwindcss = {},
    },
    setup = {
      html = function(_, opts)
        require("lspconfig").html.setup({
          capabilities = opts.capabilities,
          on_attach = opts.on_attach,
        })
        return true -- para evitar que AstroNvim configure por padrão
      end,
      cssls = function(_, opts)
        require("lspconfig").cssls.setup({
          capabilities = opts.capabilities,
          on_attach = opts.on_attach,
        })
        return true
      end,
      tailwindcss = function(_, opts)
        require("lspconfig").tailwindcss.setup({
          capabilities = opts.capabilities,
          on_attach = opts.on_attach,
          filetypes = {
            "html", "css", "scss", "javascript", "typescript",
            "javascriptreact", "typescriptreact",
          },
          init_options = {
            userLanguages = {
              eelixir = "html",
              eruby = "html",
            },
          },
        })
        return true
      end,
    },
  },
}

