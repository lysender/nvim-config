return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options

      inlay_hints = { enabled = false },
      servers = {
        ["*"] = {
          keys = {
            { "gO", require("telescope.builtin").lsp_document_symbols, desc = "Open Document Symbols" },
          },
        },
        gopls = {},
        rust_analyzer = {},
        terraformls = {},
        -- License key should be at ~/intelephense/licence.txt
        -- NOTE: spelling is licence.txt
        intelephense = {
          settings = {
            intelephense = {
              diagnostics = {
                undefinedProperties = false,
              },
            },
          },
          cmd = { "intelephense", "--stdio" },
          filetypes = { "php" },
          root_markers = { ".git", "composer.json" },
        },
        lua_ls = {
          -- cmd = { ... },
          -- filetypes = { ... },
          -- capabilities = {},
          settings = {
            Lua = {
              completion = {
                callSnippet = "Replace",
              },
              -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
              -- diagnostics = { disable = { 'missing-fields' } },
            },
          },
        },
      },
    },
  },
}
