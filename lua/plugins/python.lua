return {
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
        },
      },
    },
  },
}
