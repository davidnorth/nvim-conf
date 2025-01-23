return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = { "^./log", "^log/", "tmp", "node_modules", "%.git/", "dist/", "%.lock", "__pycache__" },
    },
  },
}
