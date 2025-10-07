return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.opt.spellfile = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"

      -- Enable spell checking by default if you want
      vim.opt.spell = true
    end,
  },
}
