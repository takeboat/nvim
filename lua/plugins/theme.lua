return {
  -- 添加 Catppuccin 主题
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- 可选: mocha, latte, frappe, macchiato
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
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "main", -- 可选: auto, main, moon, dawn
        dark_variant = "main", -- 可选: main, moon, dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        styles = {
          bold = true,
          italic = false, -- 禁用斜体
          transparency = true, -- 透明背景
        },

        groups = {
          border = "highlight_med",
          comment = "muted",
          link = "iris",
          punctuation = "subtle",

          background = "base",
          foreground = "text",
          cursor = "rose",

          status_normal = "base",
          status_insert = "foam",
          status_visual = "iris",
          status_replace = "pine",
          status_command = "love",
          status_terminal = "gold",

          head_a = "base",
          head_b = "foam",
          head_c = "iris",
        },

        highlight_groups = {
          -- 自定义透明背景
          Normal = { bg = "NONE" },
          NormalNC = { bg = "NONE" },
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },

          -- nvim-tree透明
          NvimTreeNormal = { bg = "NONE" },
          NvimTreeNormalNC = { bg = "NONE" },
          NvimTreeWinSeparator = { bg = "NONE", fg = "#14141b" },
          NvimTreeEndOfBuffer = { bg = "NONE", fg = "#14141b" },
          NvimTreeCursorLine = { bg = "#2a2a37" },

          -- 其他透明设置
          SignColumn = { bg = "NONE" },
          StatusLine = { bg = "NONE" },
          StatusLineNC = { bg = "NONE" },
          WinSeparator = { bg = "NONE", fg = "#14141b" },
          VertSplit = { bg = "NONE", fg = "#14141b" },
          EndOfBuffer = { bg = "NONE", fg = "#14141b" },

          -- 禁用特定语法元素的斜体
          Comment = { italic = false },
          Keyword = { italic = false },
          Function = { italic = false },
          Variable = { italic = false },
          Type = { italic = false },
          String = { italic = false },
        },
      })
      vim.cmd("colorscheme rose-pine")
      -- 确保透明背景生效
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "rose-pine",
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
        end,
      })
    end,
  },
  -- 配置 LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "catppuccin",
      colorscheme = "rose-pine",
    },
  },
}
