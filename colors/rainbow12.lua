vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "rainbow12"

local c = {
	black = "#000000",
	red = "#a23a50",
	green = "#3bd37f",
	orange = "#d68d45",
	blue = "#4665b0",
	purple = "#6a41a7",
	cyanblue = "#1d89c4",
	gray = "#d0d2cd",

	darkgray = "#695c59",
	red2 = "#c96d6b",
	green2 = "#96c063",
	yellow = "#e5d32f",
	cyan = "#20c5c8",
	magenta = "#9b2a7a",
	teal = "#36afc7",
	white = "#ffffff",
}

local highlights = {
	Normal = { fg = c.gray, bg = c.black },
	Comment = { fg = c.darkgray, italic = true },
	Constant = { fg = c.orange },
	String = { fg = c.green },
	Number = { fg = c.yellow },
	Identifier = { fg = c.cyan },
	Function = { fg = c.blue },
	Statement = { fg = c.red, bold = true },
	Keyword = { fg = c.purple, bold = true },
	Type = { fg = c.teal },
	Special = { fg = c.magenta },
	Error = { fg = c.red2, bold = true },
	Todo = { fg = c.yellow, bg = c.darkgray, bold = true },

	LineNr = { fg = c.darkgray },
	CursorLineNr = { fg = c.yellow, bold = true },
	CursorLine = { bg = "#1a1a1a" },

	StatusLine = { fg = c.white, bg = c.darkgray },
	StatusLineNC = { fg = c.gray, bg = c.black },

	Visual = { bg = "#333333" },

	NeoTreeDirectoryIcon = { fg = c.orange },
	NeoTreeDirectoryName = { fg = c.teal },
	NeoTreeRootName = { fg = c.magenta, bold = true },
	NeoTreeExpander = { fg = c.cyanblue },
	NeoTreeIndentMarker = { fg = c.darkgray },
}

for group, opts in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, opts)
end
