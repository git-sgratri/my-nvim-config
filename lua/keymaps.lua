--[[
================================================
    KEYMAPS
================================================
--]]

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Toggle file explorer
map("n", "<leader>f","<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Exit to normal mode 
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })
map("v", "jk", "<Esc>", { desc = "Exit visual mode" })

-- Move line up or down
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Clear search highlight
map("n", "<C-c>", ":nohl<CR>", { desc = "clear search hl", silent = true })

-- Remove character without yanking to clipboard
map("n", "x", '"_x', opts)

-- Comment toggle lines
map("v", "<leader>c", "gc", { remap = true, desc = "Toggle comment the selected lines" })
map("n", "<leader>c", "gcc", { remap = true, desc = "Toggle comment the current line" })

-- Line indenting
map("v", "<Tab>",">gv", { desc = "Indent selected lines to right" })
map("v", "<S-Tab>","<gv", { desc = "Indent back selected lines to left" })
map("n", "<Tab>", ">>",{ desc = "Indent one line to right"})
map("n", "<S-Tab>", "<<", {desc = "Indent back one line to left"} )

-- Telescope keymaps 
local builtin = require("telescope.builtin")
map("n", "<leader>sf", builtin.find_files, { desc = "Find Files" })
map("n", "<leader>sg", builtin.live_grep, { desc = "Live Grep" })
map("n", "<leader>sb", builtin.buffers, { desc = "Find Buffers" })
map("n", "<leader>sh", builtin.help_tags, { desc = "Help Tags" })
map("n", "<leader>sr", builtin.oldfiles, { desc = "Recent Files" })
map("n", "<leader>sw", builtin.grep_string, { desc = "Find Word" })
map("n", "<leader>sk", builtin.keymaps, { desc = "Find Keymaps" })
map("n", "<leader>sc", builtin.commands, { desc = "Find Commands" })

-- Paste over selection without yanking the selected text and losing the buffer
map("x", "<leader>p", [["_dP]], { desc = "Paste without losing register" })

-- Replace the current word in the whole file
map("n", "<leader>w", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
  desc = "Replace word under cursor in file",
})

-- Compile and run any language code
vim.keymap.set("n", "<leader>r", function()
    local file_name = vim.fn.expand("%:t")
    local file_type = vim.bo.filetype

    if file_type == "cpp" then
        vim.cmd("botright split | terminal g++ " .. file_name .. "; ./a.out")

    -- Add any language you want to compile file of 
    -- elseif file_type == [file_filetype] then
    --     vim.cmd("botright split | terminal [compiler] " .. file_name ..["executable file if exists"])

    end

end, { desc = "Compile and Run any language" })
