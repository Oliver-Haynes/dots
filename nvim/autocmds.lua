local autocmd = vim.api.nvim_create_autocmd

autocmd("BufNewFile", {
  pattern = "*.typ",
  callback = function()
    -- This looks specifically in ~/.config/nvim/templates/preamble.typ
    local template_path = vim.fn.stdpath "config" .. "/templates/preamble.typ"

    if vim.fn.filereadable(template_path) == 1 then
      -- Read the template into the buffer
      vim.cmd("0read " .. template_path)
      -- Clean up the extra line and move cursor to end
      vim.cmd "normal! Gdd"
      vim.cmd "normal! G"
    else
      vim.notify("Preamble not found at: " .. template_path, vim.log.levels.ERROR)
    end
  end,
})

