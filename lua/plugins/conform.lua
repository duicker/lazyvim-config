return {
  "stevearc/conform.nvim",
  opts = {
    -- Quel formateur pour chaque langage
    formatters_by_ft = {
      -- Python
      python = { "ruff_fix", "ruff_format", "black" },

      -- JavaScript / TypeScript
      javascript = { "eslint_d", "prettierd", "prettier" },
      typescript = { "eslint_d", "prettierd", "prettier" },
      javascriptreact = { "eslint_d", "prettierd", "prettier" },
      typescriptreact = { "eslint_d", "prettierd", "prettier" },

      -- Web (optionnel mais pratique)
      json = { "prettierd", "prettier" },
      html = { "prettierd", "prettier" },
      css = { "prettierd", "prettier" },
      yaml = { "prettierd", "prettier" },
      markdown = { "prettierd", "prettier" },
    },

    -- Auto format à la sauvegarde
    -- format_on_save = {
    -- lsp_fallback = true, -- utilise LSP si pas de formateur dédié
    -- async = false,
    -- timeout_ms = 1000,
    -- },

    -- Définition custom de formateurs
    formatters = {
      -- ruff --fix pour supprimer imports inutiles etc.
      ruff_fix = {
        command = "ruff",
        args = { "check", "--fix", "--stdin-filename", "$FILENAME", "-" },
        stdin = true,
      },
    },
  },
}
