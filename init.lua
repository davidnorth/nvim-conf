-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("oil").setup()

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("i", "jk", "<Esc>", opts)

function ShowFullPath()
  local path = vim.fn.expand("%:p")
  print(path)
end

vim.api.nvim_set_keymap("n", "<leader>fp", ":lua ShowFullPath()<CR>", opts)

-- Override these lazyvim defaults

vim.opt.formatoptions:remove({ "c", "r", "o" })

local nvim_lsp = require("lspconfig")

-- Use 'solargraph' as the LSP server for Ruby
nvim_lsp.solargraph.setup({})

vim.opt.grepprg = 'ag --nogroup --nocolor --column $*'
vim.opt.grepformat = '%f:%l:%c:%m'
