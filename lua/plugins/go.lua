return {
  -- 现代 Go 语法高亮
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- 确保 Go 在 treesitter 中启用
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "go", "gomod", "gosum", "gowork" })
      end
    end,
  },
}