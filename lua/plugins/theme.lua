return {
  -- 添加 Catppuccin 主题
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- 可选: mocha, latte, frappe, macchiato
        no_italic = true, -- 禁用斜体
        no_bold = false, -- 保留粗体
        transparent_background = true,
        show_end_of_buffer = false,
        styles = {
          comments = {}, -- 禁用注释斜体
          keywords = {}, -- 禁用关键字斜体
          functions = {}, -- 禁用函数斜体
          variables = {}, -- 禁用变量斜体
          conditionals = {},
          loops = {},
          booleans = {},
          numbers = {},
          properties = {},
          types = {},
          operators = {},
        },
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

  -- 配置 LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
