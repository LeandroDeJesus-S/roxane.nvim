local lush = require("lush")
local colors = require("lush_theme.codalone.colors")

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		Normal({ fg = colors.fg, bg = colors.bg }),
		NormalNC({ Normal, bg = lush.hsl("#242424") }),
		NormalFloat({ Normal, bg = lush.hsl("#242424") }),

		Cursor({ fg = colors.bg, bg = colors.fg }),
		CursorLine({ bg = lush.hsl("#2f2935") }),
		-- CursorLine({ fg = colors.white, bg = lush.hsl("#b0aeae") }),

		-- NonText({ fg = blue }),

		Directory({ fg = colors.roxaneless }),

		DiffAdd({ fg = colors.greenest }),
		DiffChange({ fg = colors.greyest }),
		DiffDelete({ fg = colors.bloodless }),
		DiffText({ fg = colors.tealest }),

		WinSeparator({ fg = colors.blackest.lighten(5) }),
		YankHighlight({ fg = colors.bg, bg = colors.bluelest.lighten(50), bold = true }),
		Folded({ bg = colors.roxanest, fg = colors.grey }),

		Visual({ fg = colors.fg, bg = lush.hsl("#503C5C") }),

		IncSearch({ Visual, bg = Visual.bg.lighten(30) }),
		Substitue({ IncSearch }),
		MatchParen({ IncSearch }),
		Search({ IncSearch }),
		CurSearch({ IncSearch }),

		CursorLineNr({ fg = colors.bluelest.lighten(50) }),

		FloatBorder({ fg = colors.roxanelest.saturate(-25) }),
		FloatTitle({ fg = colors.bluelest.lighten(50) }),
		FloatFooter({ fg = colors.greyest }),

		Pmenu({ Normal, fg = colors.roxaneless.lighten(50) }),
		PmenuSel({ bg = Pmenu.fg, fg = colors.white }),
		PmenuMatchSel({ PmenuSel }),
		PmenuMatch({ PmenuSel }),

		Question({ fg = lush.hsl("#d28cfe") }),

		SpellBad({ sp = colors.bloodless, undercurl = true }),
		SpellCap({ sp = colors.sunshineless, undercurl = true }),
		SpellLocal({ sp = colors.tealess, undercurl = true }),
		SpellRare({ sp = colors.tealess.lighten(50), undercurl = true }),

		DiagnosticError({ fg = colors.blood }),
		DiagnosticWarn({ fg = colors.sunshine }),
		DiagnosticInfo({ fg = colors.tea }),
		DiagnosticHint({ fg = colors.grey }),
		DiagnosticOk({ fg = colors.green }),

		StatusLine({ Normal, bg = Normal.bg.lighten(1) }),

		TabLine({ StatusLine }),
		TabLineSel({ bg = colors.roxaneless }),
		TabLineFill({ fg = colors.roxanelest.lighten(50) }),

		-- syntax
		Constant({ fg = colors.white }), -- Constant	any constant
		String({ fg = colors.roxanelest.lighten(50) }), -- String		a string constant: "this is a string"
		Character({ String }), -- Character	a character constant: 'c', '\n'
		Number({ fg = colors.tealest }), -- Number		a number constant: 234, 0xff
		Boolean({ fg = colors.roxane.rotate(-10).lighten(50) }), -- Boolean		a boolean constant: TRUE, false
		Float({ Number }), -- Float		a floating point constant: 2.3e10
		--
		Identifier({ fg = colors.roxanelest.lighten(80) }), -- Identifier	any variable name
		Function({ fg = colors.bluelest.lighten(50) }), -- Function	function name (also: methods for classes)
		--
		Statement({ fg = colors.roxanelest }), -- Statement	any statement
		-- Conditional	if, then, else, endif, switch, etc.
		-- Repeat		for, do, while, etc.
		-- Label		case, default, etc.
		Operator({ fg = colors.roxane.rotate(-10).lighten(50) }), -- Operator	"sizeof", "+", "*", etc.
		-- Keyword		any other keyword
		-- Exception	try, catch, throw
		--
		-- PreProc		generic Preprocessor
		-- Include		preprocessor #include
		-- Define		preprocessor #define
		-- Macro		same as Define
		-- PreCondit	preprocessor #if, #else, #endif, etc.
		--
		Type({ fg = colors.roxanelest.lighten(50).rotate(20) }), -- Type		int, long, char, etc.
		-- StorageClass	static, register, volatile, etc.
		-- Structure	struct, union, enum, etc.
		-- Typedef		a typedef
		--
		Special({ fg = colors.roxaneless.lighten(30) }), -- Special		any special symbol
		-- SpecialChar	special character in a constant
		-- Tag		you can use CTRL-] on this
		-- Delimiter	character that needs attention
		-- SpecialComment	special things inside a comment
		-- Debug		debugging statements
		--
		-- Underlined	text that stands out, HTML links
		--
		-- Ignore		left blank, hidden  |hl-Ignore|
		--
		Error({ fg = colors.bloodless }), -- Error		any erroneous construct
		--
		-- Todo		anything that needs extra attention; mostly the
		-- 		keywords TODO FIXME and XXX
		--
		Added({ fg = colors.greenlest.lighten(50) }), -- Added		added line in a diff
		Changed({ fg = colors.grey }), -- Changed		changed line in a diff
		Removed({ fg = colors.bloodless.lighten(50) }), -- Removed		removed line in a diff

		Comment({ fg = lush.hsl("#7f7f7f") }),

		-- lsp
		-- LspReferenceText({ Visual, fg = colors.black }),

		-- tree-sitter
		sym("@comment.documentation")({ String }),

		sym("@variable")({ Identifier }), --                      various variable names
		sym("@variable.builtin")({ fg = colors.roxaner.rotate(30).lighten(10) }), --                    built-in variable names (e.g. `this`, `self`)
		sym("@variable.parameter")({ fg = colors.greylest }), --             parameters of a function
		sym("@variable.member")({ Identifier }), --              object and struct fields
		sym("@variable.parameter.builtin")({ fg = colors.grey }), --     special parameters (e.g. `_`, `it`)

		sym("@constant")({ Constant }),
		sym("@constant.builtin")({ Constant }),
		sym("@constant.macro")({ Constant }),

		sym("@module")({ Identifier }), -- @module                 modules or namespaces
		sym("@module.builtin")({ Identifier }), -- @module.builtin         built-in modules or namespaces
		-- @label                  `GOTO` and other labels (e.g. `label:` in C), including heredoc labels

		sym("@string")({ String }), -- @string                 string literals
		sym("@string.documetation")({ String }), -- @string.documentation   string documenting code (e.g. Python docstrings)
		sym("@string.regexp")({ fg = colors.sunshinelest }), -- @string.regexp          regular expressions
		sym("@string.escape")({ fg = colors.roxane }), -- @string.escape          escape sequences
		-- @string.special         other special strings (e.g. dates)
		-- @string.special.symbol  symbols or atoms
		-- @string.special.path    filenames
		sym("@string.special.url")({ fg = colors.bluelest }), -- @string.special.url     URIs (e.g. hyperlinks)

		sym("@boolean")({ Boolean }),
		sym("@number")({ Number }),
		sym("@number.float")({ Number }),

		sym("@type")({ Type }), -- @type                   type or class definitions and annotations
		sym("@type.builtin")({ Type }), -- @type.builtin           built-in types

		-- @type.definition        identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)

		sym("@attribute")({ fg = colors.grey }), -- @attribute              attribute annotations (e.g. Python decorators, Rust lifetimes)
		sym("@attribute.builtin")({ sym("@attribute") }), -- @attribute.builtin      builtin annotations (e.g. `@property` in Python)
		-- @property               the key in key/value pairs

		-- @function               function definitions
		sym("@function.builtin")({ fg = colors.blue.lighten(45) }), -- @function.builtin       built-in functions
		-- @function.call          function calls
		-- @function.macro         preprocessor macros
		--
		-- @function.method        method definitions
		-- @function.method.call   method calls

		sym("@constructor")({ Type }), -- @constructor            constructor calls and definitions
		-- @operator               symbolic operators (e.g. `+`, `*`)
		--
		-- @keyword                keywords not fitting into specific categories
		-- @keyword.coroutine      keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
		-- @keyword.function       keywords that define a function (e.g. `func` in Go, `def` in Python)
		-- @keyword.operator       operators that are English words (e.g. `and`, `or`)
		-- @keyword.import         keywords for including or exporting modules (e.g. `import`, `from` in Python)
		-- @keyword.type           keywords describing namespaces and composite types (e.g. `struct`, `enum`)
		-- @keyword.modifier       keywords modifying other constructs (e.g. `const`, `static`, `public`)
		-- @keyword.repeat         keywords related to loops (e.g. `for`, `while`)
		-- @keyword.return         keywords like `return` and `yield`
		-- @keyword.debug          keywords related to debugging
		-- @keyword.exception      keywords related to exceptions (e.g. `throw`, `catch`)
		--
		-- @keyword.conditional         keywords related to conditionals (e.g. `if`, `else`)
		-- @keyword.conditional.ternary ternary operator (e.g. `?`, `:`)
		--
		-- @keyword.directive           various preprocessor directives and shebangs
		-- @keyword.directive.define    preprocessor definition directives
		--
		-- @punctuation.delimiter  delimiters (e.g. `;`, `.`, `,`)
		-- @punctuation.bracket    brackets (e.g. `()`, `{}`, `[]`)
		sym("@punctuation.special")({ fg = String.fg.darken(30) }), -- @punctuation.special    special symbols (e.g. `{}` in string interpolation)
		--
		-- @comment                line and block comments
		-- @comment.documentation  comments documenting code
		--
		sym("@comment.error")({ fg = colors.blood }), -- @comment.error          error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
		sym("@comment.warning")({ fg = colors.sunshine }), -- @comment.warning        warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
		sym("@comment.todo")({ fg = colors.roxane }), -- @comment.todo           todo-type comments (e.g. `TODO`, `WIP`)
		sym("@comment.note")({ fg = colors.tealest }), -- @comment.note           note-type comments (e.g. `NOTE`, `INFO`, `XXX`)
		--
		-- @markup.strong          bold text
		-- @markup.italic          italic text
		-- @markup.strikethrough   struck-through text
		-- @markup.underline       underlined text (only for literal underline markup!)
		--
		-- @markup.heading         headings, titles (including markers)
		-- @markup.heading.1       top-level heading
		-- @markup.heading.2       section heading
		-- @markup.heading.3       subsection heading
		-- @markup.heading.4       and so on
		-- @markup.heading.5       and so forth
		-- @markup.heading.6       six levels ought to be enough for anybody
		--
		sym("@markup.quote")({ fg = colors.bluelest.lighten(50) }), -- @markup.quote           block quotes
		-- @markup.math            math environments (e.g. `$ ... $` in LaTeX)
		--
		-- @markup.link            text references, footnotes, citations, etc.
		-- @markup.link.label      link, reference descriptions
		-- @markup.link.url        URL-style links
		--
		sym("@markup.raw")({ fg = colors.bluelest.lighten(50) }), -- @markup.raw             literal or verbatim text (e.g. inline code)
		-- @markup.raw.block       literal or verbatim text as a stand-alone block
		--
		-- @markup.list            list markers
		-- @markup.list.checked    checked todo-style list markers
		-- @markup.list.unchecked  unchecked todo-style list markers
		--
		-- @diff.plus              added text (for diff files)
		-- @diff.minus             deleted text (for diff files)
		-- @diff.delta             changed text (for diff files)
		--
		sym("@tag")({ fg = colors.roxaner.lighten(50) }), -- @tag                    XML-style tag names (e.g. in XML, HTML, etc.)
		sym("@tag.builtin")({ sym("@tag") }), -- @tag.builtin            builtin tag names (e.g. HTML5 tags)
		-- @tag.attribute          XML-style tag attributes
		-- @tag.delimiter          XML-style tag delimiters

		-- snacks
		-- SnacksPicker({ fg = colors.blue }),
		-- SnacksPickerTree({ fg = colors.blackest.lighten(10) }),
		SnacksPickerDirectory({ fg = colors.roxanelest.lighten(75) }),
		SnacksPickerListCursorLine({ bg = Directory.fg.saturate(-70).lightness(50), fg = colors.whiteness }),
		SnacksPickerTotals({ fg = colors.bluelest.lighten(50) }),
		SnacksPickerFile({ fg = colors.bluelest.lighten(60) }),

		-- telescope
		TelescopeNormal({ NormalFloat }),
		TelescopeBorder({ FloatBorder }),
		TelescopePromptNormal({ TelescopeNormal }),
		TelescopePromptBorder({ TelescopeBorder }),
		TelescopePromptTitle({ fg = colors.bluelest.lighten(50) }),
		TelescopeResultsNormal({ TelescopeNormal }),
		TelescopeResultsBorder({ TelescopeBorder }),
		TelescopeResultsTitle({ fg = colors.bluelest.lighten(50) }),
		TelescopePreviewNormal({ TelescopeNormal }),
		TelescopePreviewBorder({ TelescopeBorder }),
		TelescopePreviewTitle({ fg = colors.bluelest.lighten(50) }),
		TelescopeSelection({ bg = SnacksPickerListCursorLine.bg, fg = colors.whiteness }),
		TelescopeSelectionCaret({ fg = colors.roxane }),
	}
end)
return theme
