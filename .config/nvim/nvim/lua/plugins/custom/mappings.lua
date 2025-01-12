local M = {
  n = {
    ['<C-h>'] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ['<C-l>'] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ['<C-j>'] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ['<C-k>'] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

for mode, mappings in pairs(M) do
  for lhs, rhs in pairs(mappings) do
    vim.keymap.set(mode, lhs, rhs[1], {desc = rhs[2]})
  end
end
