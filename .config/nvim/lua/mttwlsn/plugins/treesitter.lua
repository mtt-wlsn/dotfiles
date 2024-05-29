return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    --configure treesitter
    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "bash",
        "c",
        "c_sharp",
        "cpp",
        "css",
        "csv",
        "dockerfile",
        "elixir",
        "erlang",
        "gitignore",
        "go",
        "graphql",
        "helm",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        "prisma",
        "python",
        "regex",
        "rust",
        "scss",
        "sql",
        "svelte",
        "swift",
        "terraform",
        "typescript",
        "vim",
        "vimdoc",
        "vue",
        "xml",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
