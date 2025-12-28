return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- 可选: mocha, latte, frappe, macchiato
                no_italic = true, -- 禁用斜体
                no_bold = false, -- 保留粗体
                transparent_background = false,
                show_end_of_buffer = false,
                integrations = {
                    telescope = true,
                    which_key = true,
                    mason = true,
                    neotree = true,
                    aerial = true,
                    notify = true,
                    nvimtree = true,
                    cmp = true,
                    gitsigns = true,
                    illuminate = true,
                    indent_blankline = {
                        enabled = true,
                        scope_color = "surface2",
                    },
                },
            })
            vim.cmd("colorscheme catppuccin")
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
}
