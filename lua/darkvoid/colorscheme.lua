local M = {}

-- Default configuration
M.config = {
	transparent = false,
	colors = {
		fg = "#C0C0C0",
		bg = "#1C1C1C",
		cursor = "#FFFF00",
		line_nr = "#404040",
		visual = "#444444",
	},
}

-- Define colors and highlight groups (moved outside setup)
local colors = M.config.colors

local highlight_groups = {
	Normal = { guifg = colors.fg, guibg = M.config.transparent and "NONE" or colors.bg },
	Cursor = { guifg = colors.cursor, guibg = M.config.transparent and "NONE" or colors.bg },
	LineNr = { guifg = colors.line_nr },
	Visual = { guibg = colors.visual },
	-- You can add more highlight groups here
}

-- Apply the colorscheme (using defined colors and groups)
function M.setup(user_config)
	-- Merge user configuration with default (optional)
	M.config = vim.tbl_deep_extend("force", M.config, user_config or {})

	-- Apply highlight groups
	for group_name, config in pairs(highlight_groups) do
		local cmd = "highlight " .. group_name .. " "
		for key, value in pairs(config) do
			cmd = cmd .. key .. "=" .. value .. " "
		end
		vim.cmd(cmd)
	end

	-- ... other setup logic (if needed)
end

return M
