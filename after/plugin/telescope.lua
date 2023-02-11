local builtin = require('telescope.builtin')
local  map = vim.keymap.set
local opts = { noremap = true }
---
map('n', '<leader>tf', builtin.find_files, opts)
map('n', '<leader>bb', builtin.buffers, opts)
map('n', '<leader>th', builtin.help_tags, opts)
map('n', '<C-p>', builtin.git_files, opts)
map('n', '<leader>tg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
map("n", "<space>tb", ":Telescope file_browser<CR>", opts)

require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require('telescope').load_extension('file_browser')
require('telescope').load_extension('project')
