return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
        },
        config = function()
            vim.diagnostic.config({
                virtual_text = true,
                underline = true
            })
        end,
        },

    {
        "mason-org/mason.nvim",
        cmd = "Mason",
        opts = {},
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "clangd",
                "html",
                "cssls",
                "ts_ls",
                "rust_analyzer",
            },
            automatic_enable = true,
        },
        config = function(_, opts)
            -- Configure lua_ls using the native Neovim 0.11+ API before enabling
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })
        
        require("mason-lspconfig").setup(opts)
        end,
    },
}
