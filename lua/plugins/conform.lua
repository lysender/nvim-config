return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true, lsp_format = "never" })
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      default_format_opts = {
        timeout_ms = 3000,
        async = false,
        quiet = false,
        lsp_format = "never", -- do not use lsp formatting as fallback
      },

      notify_on_error = false,

      formatters_by_ft = {
        lua = { "stylua" },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        -- javascript = { "prettierd", "prettier", stop_after_first = true },
        javascript = { "biome" },
        javascriptreact = { "biome" },
        typescript = { "biome" },
        typescriptreact = { "biome" },
        json = { "biome" },
        css = { "biome" },
        scss = { "biome" },
        -- html = { "biome" },
        go = { "goimports", "gofmt" },
        rust = { "rustfmt" },
        terraform = { "terraform_fmt" },
        -- php = { "mago_format" },
      },
    },
  },
}
