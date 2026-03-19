vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local bufnr = args.buf
    local ft = vim.bo[bufnr].filetype

    local lang = vim.treesitter.language.get_lang(ft) or ft

    local has_parser, _ = pcall(vim.treesitter.get_parser, bufnr, lang)

    if has_parser then
      vim.treesitter.start(bufnr, lang)
    end
  end,
})

require("config.options")
require("config.keymaps")
require("config.lazy")

