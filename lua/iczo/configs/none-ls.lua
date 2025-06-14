local none_ls = require('null-ls')
local augroup = vim.api.nvim_create_augroup("LspFormatting",{})
local opts ={
  sources = {
    none_ls.builtins.diagnostics.mypy,
    none_ls.builtins.formatting.black,
    none_ls.builtins.formatting.clang_format,
    none_ls.builtins.formatting.google_java_format,
  },
  on_attach =function (client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
        vim.api.nvim_create_autocmd("BufWritePre",{
        buffer = bufnr,
        group = augroup,
        callback = function ()
          vim.lsp.buf.format({ bufnr = bufnr})
        end
      })
    end
  end,
}

return opts
