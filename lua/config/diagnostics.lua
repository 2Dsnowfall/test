vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '⊗',
      [vim.diagnostic.severity.WARN] = '!',
      [vim.diagnostic.severity.HINT] = '?',
      [vim.diagnostic.severity.INFO] = '🛈'
    }
    -- alternative ⊗ ⨂
  },
  virtual_text = true,
  virtual_line = true,
})
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      scope = "line"
    })
  end
})
