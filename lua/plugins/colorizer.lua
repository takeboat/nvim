return {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre", -- 在读取文件前加载
    opts = {
        filetypes = { "*", "!lazy" }, -- 所有文件类型
        user_default_options = {
            RGB = true, -- #RGB
            RRGGBB = true, -- #RRGGBB
            names = false,
            RRGGBBAA = false,
            AARRGGBB = false,
            rgb_fn = true, -- rgb() 函数
            hsl_fn = true, -- hsl() 函数
            css = true,
            css_fn = true,
            mode = "background",
            tailwind = false,
            sass = { enable = false, parsers = { css = true } },
            virtualtext = "⬛️",
        },
        buftypes = { "*", "!prompt", "!popup" },
    },
}
