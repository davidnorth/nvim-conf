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
