return {
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      settings = {
        options = {
          notify_user_on_venv_activation = true,
        },
      },
    },
    ft = "python",
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "mypy" },
      },
      linters = {
        mypy = {
          -- prefer the nvim venv mypy; fall back to $PATH
          cmd = (function()
            local venv_mypy = vim.fn.expand("$HOME/venvs/nvim/bin/mypy")
            if vim.fn.executable(venv_mypy) == 1 then
              return venv_mypy
            end
            return "mypy"
          end)(),
          args = function()
            local venv = require("venv-selector").venv()
            if venv then
              return { "--python-executable", venv }
            end
            return {}
          end,
        },
      },
    },
  },
}
