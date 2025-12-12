return {
  -- 添加 base16-nvim 主题
  {
    "RRethy/base16-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- 可选：设置特定的 base16 主题
      -- vim.cmd("colorscheme base16-gruvbox-dark-hard")
      -- vim.cmd("colorscheme base16-onedark")
      vim.cmd("colorscheme base16-gruvbox-dark-hard")
      -- 可选配置
      require("base16-colorscheme").with_config({
        telescope = true,
        indentblankline = true,
        notify = true,
        tsrainbow = true,
      })
    end,
  },

  -- 配置 LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-gruvbox-dark-hard",
    },
  },
}
