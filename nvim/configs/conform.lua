local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    typst = { "typstyle" },
    cpp = { "clang-format" },
    -- php = { "php_cs_fixer" },
    python = { "ruff_format" },
    javascript = { "prettier" },
    c = { "clang-format" },
    rust = { "rustfmt", lsp_format = "fallback" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options

