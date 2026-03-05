require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls","ts_ls","tinymist","clangd","pyright","phpactor"}
vim.lsp.enable(servers)

vim.lsp.config.html = {
  filetypes={"html","php"},
}

local present,luasnip = pcall(require,"luasnip")
if present then
  luasnip.filetype_extend("php",{"html"})
end
