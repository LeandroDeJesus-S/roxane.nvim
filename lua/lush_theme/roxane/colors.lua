local lush = require("lush")
local hsl = lush.hsl
return {
	-- Purple theme colors - used for statements, identifiers, directories
	roxanest = hsl(270, 63, 15), -- darkest purple - cursor line, float borders
	roxaner = hsl(270, 63, 25), -- dark purple - tags
	roxane = hsl(270, 63, 35), -- medium purple - string escapes, todo comments
	roxaneless = hsl(270, 63, 45), -- light purple - directories, pmenu text
	roxanelest = hsl(270, 63, 55), -- lightest purple - strings, statements, tab line fill

	-- Red theme colors - used for errors, deletions, diagnostics
	bloodest = hsl(347, 63, 15), -- darkest red - diff delete
	blooder = hsl(347, 63, 25), -- dark red
	blood = hsl(347, 63, 35), -- medium red - diagnostic errors, comment errors
	bloodless = hsl(347, 63, 45), -- light red - spell bad, removed lines
	bloodlest = hsl(347, 63, 55), -- lightest red

	-- Cyan theme colors - used for numbers, info diagnostics
	teaest = hsl(184, 63, 15), -- darkest cyan - diff text
	teaer = hsl(184, 63, 25), -- dark cyan
	tea = hsl(184, 63, 35), -- medium cyan - diagnostic info
	tealess = hsl(184, 63, 45), -- light cyan - spell local
	tealest = hsl(184, 63, 55), -- lightest cyan - numbers, comment notes

	-- Green theme colors - used for additions, success states
	greenest = hsl(140, 63, 15), -- darkest green - diff add
	greener = hsl(140, 63, 25), -- dark green
	green = hsl(140, 63, 35), -- medium green - diagnostic ok
	greenless = hsl(140, 63, 45), -- light green
	greenlest = hsl(140, 63, 55), -- lightest green - added lines

	-- Yellow theme colors - used for warnings, search highlights
	sunshinest = hsl(62, 63, 15), -- darkest yellow
	sunshiner = hsl(62, 63, 25), -- dark yellow
	sunshine = hsl(62, 63, 35), -- medium yellow - diagnostic warn, comment warnings
	sunshineless = hsl(62, 63, 45), -- light yellow - spell cap
	sunshinelest = hsl(62, 63, 55), -- lightest yellow - regex strings

	-- Blue theme colors - used for functions, URLs, UI accents
	bluest = hsl(232, 63, 15), -- darkest blue
	bluer = hsl(232, 63, 25), -- dark blue
	blue = hsl(232, 63, 35), -- medium blue - builtin functions
	blueless = hsl(232, 63, 45), -- light blue
	bluelest = hsl(232, 63, 55), -- lightest blue - functions, cursor line numbers, URLs, questions

	-- Orange theme colors - used for operators, booleans
	orangest = hsl(14, 63, 15), -- darkest orange
	oranger = hsl(14, 63, 25), -- dark orange
	orange = hsl(14, 63, 35), -- medium orange
	orangeless = hsl(14, 63, 45), -- light orange
	orangelest = hsl(14, 63, 55), -- lightest orange

	-- Dark gray theme colors - used for backgrounds, separators
	blackest = hsl(270, 15, 5), -- darkest gray - background, win separators
	blacker = hsl(270, 15, 10), -- dark gray
	black = hsl(270, 15, 15), -- medium dark gray
	blackless = hsl(270, 15, 20), -- light dark gray
	blacklest = hsl(270, 15, 25), -- lightest dark gray - comments

	-- Medium gray theme colors - used for secondary text, attributes
	greyest = hsl(270, 5, 30), -- darkest gray - status line, diff change, attributes
	greyer = hsl(270, 5, 40), -- dark gray - inc search
	grey = hsl(270, 5, 50), -- medium gray - folded text, diagnostic hint, builtin params
	greyless = hsl(270, 5, 60), -- light gray
	greylest = hsl(270, 5, 70), -- lightest gray - parameters

	-- Light theme colors - used for foreground, constants
	whitest = hsl(200, 0, 100), -- pure white
	whiteness = hsl(180, 0, 100), -- pure white (different hue)
	white = hsl(180, 0, 90), -- off-white - constants, pmenu selection
	whiteless = hsl(180, 0, 80), -- light gray-white
	whitelest = hsl(180, 0, 70), -- lighter gray-white - foreground

	-- Main theme colors
	fg = hsl("#E5E5E5"), -- main foreground color
	bg = hsl("#1a1a1a"), -- main background color
}
