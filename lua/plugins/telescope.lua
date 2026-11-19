return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    require("telescope").setup({
        pickers = {
            find_files = {
                hidden = true
            },
            live_grep = {
                additional_args = function ()
                    return {"--hidden", "-g", "!.git"}
                end,
            },
        },
    })
}
