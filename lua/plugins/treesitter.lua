return {
	{ "nvim-treesitter/nvim-treesitter", 
	branch = "master", 
	lazy = false, 
	build = ":TSUpdate",
	config = function()
	require("nvim-treesitter.configs").setup({ 
		ensure_installed = { 
                    "lua", 
                    "vim", 
                    "vimdoc", 
                    "bash", 
                    "json", 
                    "yaml", 
                    "html", 
                    "css", 
                    "javascript", 
                    "typescript", 
                    "tsx", 
                    "python", 
                    "c", 
                    "cpp", 
                    "markdown", 
                    "markdown_inline", 
                },

    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },
  })
end,
},
}
