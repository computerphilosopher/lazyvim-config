return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "c_sharp" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        csharp_ls = {
          get_language_id = function()
            return "csharp"
          end,
          keys = {
            { "<C-]>", vim.lsp.buf.definition, desc = "Goto Definition", has = "definition" },
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = { cs = { "csharpier" } },
      formatters = {
        csharpier = {
          command = "csharpier",
          args = { "format", "--write-stdout", "--stdin-path", "$FILENAME" },
        },
      },
    },
  },
}
