-- shipwright_build.lua
local lushwright = require("shipwright.transform.lush")
local theme = require("lush_theme.roxane")
local colors = require("lush_theme.roxane.colors")

run(
	theme,
	lushwright.to_lua,
	{ patchwrite, "colors/roxane.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" },

	-- kitty
	function(_)
		return theme
	end,
	function(groups)
		return {
			fg = groups.Normal.fg.darken(10), -- can't use the same color otherwise nvim will be transparent
			bg = groups.Normal.bg.darken(10),
			cursor_bg = groups.Cursor.bg,
			cursor_fg = groups.Cursor.fg,
			selection_bg = groups.Visual.bg,
			selection_fg = groups.Visual.fg,

			black = colors.blackless,
			red = colors.bloodless,
			green = colors.greenless,
			yellow = colors.sunshineless,
			blue = colors.bluelest,
			magenta = colors.roxanelest,
			cyan = colors.tealess,
			white = colors.white,

			bright_black = colors.grey,
			bright_red = colors.bloodless.lighten(50),
			bright_green = colors.greenless.lighten(50),
			bright_yellow = colors.sunshineless.lighten(50),
			bright_blue = colors.blueless.lighten(50),
			bright_magenta = colors.roxaneless.lighten(50),
			bright_cyan = colors.tealess.lighten(50),
			bright_white = colors.whitest,

			url = colors.bluelest.lighten(50),
			border_active = groups.FloatBorder.fg,
			border_inactive = groups.Normal.bg.lighten(10),
			border_bell = colors.sunshine,

			-- Tab bar colors
			tab_active_fg = groups.Normal.bg,
			tab_active_bg = colors.roxaneless.lighten(50),
			tab_inactive_fg = colors.roxanelest.lighten(50),
			tab_inactive_bg = groups.TabLine.bg,
			tab_bg = groups.TabLineFill.bg or groups.Normal.bg,

			name = "Roxane",
			author = "LeandroDeJesus-S",
			license = "MIT",
			blurb = "A lush theme for the roxane color palette",
		}
	end,
	contrib.kitty,
	{ overwrite, "extras/kitty-theme.conf" }
)
