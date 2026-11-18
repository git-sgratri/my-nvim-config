return { { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false, config = function() require("catppuccin").setup({ flavour = "mocha", -- latte, frappe, macchiato, mocha

    transparent_background = true,
    lazy = true,

    integrations = {
      treesitter = true,
      native_lsp = {
        enabled = true,
      },
      telescope = true,
      which_key = true,
    },
  })

  vim.cmd.colorscheme("catppuccin")
end,

}, }
