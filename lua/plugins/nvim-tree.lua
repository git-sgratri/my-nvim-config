return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({
                view = {
                    width = 30,
                    side = "right",
                },
                actions = {
                    open_file = {
                        quit_on_open = true
                    },
                },
                git = {
                    enable = true,
                    ignore = false,
                },
                renderer = {
                   indent_markers = {
                        enable = true,
                        inline_arrows = true,
                        icons = {
                            corner = "└",
                            edge = "│",
                            item = "├",
                            bottom = "─",
                            none = " ",
                        },
                    },    
                    group_empty = true,
                    highlight_git = true,
                    icons = {
                        show = {
                            file = true,
                            folder = true,
                            folder_arrow = true,
                            git = true,
                        },
                    },
                },
                filters = {
                    dotfiles = false,
                },
            })
        end,
    },
}
