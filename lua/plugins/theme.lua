return {
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     lazy = false,
    --     config = function()
    --         require("catppuccin").setup({
    --             flavour = "mocha", -- 可选: mocha, latte, frappe, macchiato
    --             no_italic = true, -- 禁用斜体
    --             no_bold = false, -- 保留粗体
    --             transparent_background = false,
    --             show_end_of_buffer = false,
    --             integrations = {
    --                 telescope = true,
    --                 which_key = true,
    --                 mason = true,
    --                 neotree = true,
    --                 aerial = true,
    --                 notify = true,
    --                 nvimtree = true,
    --                 cmp = true,
    --                 gitsigns = true,
    --                 illuminate = true,
    --                 indent_blankline = {
    --                     enabled = true,
    --                     scope_color = "surface2",
    --                 },
    --             },
    --         })
    --         vim.cmd("colorscheme catppuccin")
    --     end,
    -- },
    -- -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "catppuccin",
    --     },
    --
    -- },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            local bg = "#1e2022"
            require("gruvbox").setup({
                contrast = "hard",
                terminal_colors = true,
                undercurl = true,
                underline = true,
                bold = false,
                italic = {
                    strings = false,
                    emphasis = true,
                    comments = false,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true,
                transparent_mode = false,
                palette_overrides = {
                    dark0 = bg,
                    dark2 = bg,
                },
                overrides = {
                    -- 统一 Neo-tree 背景
                    NeoTreeNormal = { bg = bg },
                    NeoTreeNormalNC = { bg = bg },
                    NeoTreeEndOfBuffer = { bg = bg, fg = bg },
                    NeoTreeVertSplit = { bg = bg },

                    -- 统一其他区域
                    NormalFloat = { bg = bg },
                    FloatBorder = { bg = bg },
                    StatusLine = { bg = bg },
                    TabLineFill = { bg = bg },
                },
            })
            vim.cmd.colorscheme("gruvbox")
        end,
    },
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = function()
    --         require("gruvbox").setup({
    --             contrast = "hard",
    --             terminal_colors = true,
    --             undercurl = true,
    --             underline = true,
    --             bold = false,
    --             italic = {
    --                 strings = false,
    --                 emphasis = true,
    --                 comments = false,
    --                 operators = false,
    --                 folds = true,
    --             },
    --             strikethrough = true,
    --             invert_selection = false,
    --             invert_signs = false,
    --             invert_tabline = false,
    --             invert_intend_guides = false,
    --             inverse = true,
    --             transparent_mode = false,
    --             palette_overrides = {
    --                 dark0 = "#1e2022",
    --                 dark2 = "#1e2022",
    --             },
    --         })
    --         vim.cmd.colorscheme("gruvbox")
    --     end,
    -- },
    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     config = function()
    --         require("rose-pine").setup({
    --             variant = "moon", -- auto, main, moon, or dawn
    --             dark_variant = "moon", -- main, moon, or dawn
    --             dim_inactive_windows = false,
    --             extend_background_behind_borders = true,
    --             enable = {
    --                 terminal = true,
    --                 legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    --                 migrations = true, -- Handle deprecated options automatically
    --             },
    --             styles = {
    --                 bold = true,
    --                 italic = false,
    --                 transparency = false,
    --             },
    --         })
    --
    --         vim.cmd("colorscheme rose-pine")
    --     end,
    -- },
}
