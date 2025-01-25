# Configuration

## Theme configs

You can configure **darkvoid.nvim** by setting up the colorscheme in your way and configuring it like this:

```lua
require('darkvoid').setup({
    transparent = false,
    glow = false,
    show_end_of_buffer = true,

    colors = {
        fg = "#c0c0c0",
        bg = "#1c1c1c",
        cursor = "#bdfe58",
        line_nr = "#404040",
        visual = "#303030",
        comment = "#585858",
        string = "#cce6d6",
        func = "#edb472"
        constant = "#b2d8d8",

        -- enable or disable specific plugin highlights
        plugins = {
            gitsigns = true,
            nvim_cmp = true,
            treesitter = true,
            nvimtree = true,
            telescope = true,
            lualine = true,
            bufferline = true,
            oil = true,
            whichkey = true,
            nvim_notify = true,
        },

        -- gitsigns colors
        added = "#baffc9",
        changed = "#ffffba",
        removed = "#ffb3ba",

        -- Pmenu colors
        pmenu_bg = "#1c1c1c",
        pmenu_sel_bg = "#1bfd9c",
        pmenu_fg = "#c0c0c0",

        -- EndOfBuffer color
        eob = "#3c3c3c",

        -- Telescope specific colors
        border = "#585858",
        title = "#bdfe58",

        -- bufferline specific colors
        bufferline_selection = "#1bfd9c",

        -- LSP diagnostics colors
        error = "#dea6a0",
        warning = "#d6efd8",
        hint = "#bedc74",
        info = "#7fa1c3",
    },
})
```

## lualine.nvim Configs

To use darkvoid.nvim as your lualine theme add this in your config (lualine.lua)

```lua
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  enabled = true,
  config = function()
    require("darkvoid").setup()
  end,
}
```

