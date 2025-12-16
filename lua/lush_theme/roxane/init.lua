local lush = require("lush")
local colors = require("lush_theme.roxane.colors")

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		Normal({ fg = colors.fg, bg = colors.bg }),
		NormalNC({ Normal, bg = lush.hsl("#242424") }),
		NormalFloat({ Normal, bg = Normal.bg.lighten(1) }),

		Cursor({ fg = colors.bg, bg = colors.fg }),
		CursorLine({ bg = lush.hsl("#2f2935") }),
		-- CursorLine({ fg = colors.white, bg = lush.hsl("#b0aeae") }),

		-- NonText({ fg = blue }),

		Directory({ fg = colors.roxaneless }),

		DiffAdd({ fg = colors.greener, bg = colors.greenlest.lighten(50).saturate(-50) }),
		DiffChange({ fg = colors.bluelest.lighten(50) }),
		DiffDelete({ fg = colors.white, bg = colors.blooder.lighten(50).saturate(-50) }),
		DiffText({ fg = colors.tealest }),

		WinSeparator({ fg = NormalFloat.bg.lighten(1) }), -- win separator
		YankHighlight({ fg = colors.bg, bg = colors.bluelest.lighten(50), bold = true }),
		Folded({ bg = colors.bg.lighten(5) }),

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
		DiagnosticSignInfo({ fg = colors.roxanelest }),

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
		sym("@markup.heading")({ fg = colors.roxanelest.lighten(50), bold = true }), -- @markup.heading         headings, titles (including markers)
		sym("@markup.heading.1")({ fg = colors.roxanelest.lighten(30), bold = true }), -- @markup.heading.1       top-level heading
		sym("@markup.heading.2")({ fg = colors.roxanelest.lighten(30).rotate(20), bold = true }), -- @markup.heading.2       section heading
		sym("@markup.heading.3")({ fg = colors.roxanelest.lighten(30).rotate(50), bold = true }), -- @markup.heading.3       subsection heading
		sym("@markup.heading.4")({ fg = colors.roxanelest.lighten(30).rotate(70), bold = true }), -- @markup.heading.4       and so on
		sym("@markup.heading.5")({ fg = colors.roxanelest.lighten(30).rotate(80), bold = true }), -- @markup.heading.5       and so forth
		sym("@markup.heading.6")({ fg = colors.roxanelest.lighten(30).rotate(100), bold = true }), -- @markup.heading.6       six levels ought to be enough for anybody
		sym("@markup.quote")({ fg = colors.bluelest.lighten(50) }), -- @markup.quote           block quotes
		sym("@markup.math")({ fg = colors.roxanest.lighten(50) }), -- @markup.math            math environments (e.g. `$ ... $` in LaTeX)
		--
		sym("@markup.link")({ fg = colors.roxanelest }), -- @markup.link            text references, footnotes, citations, etc.
		sym("@markup.link.label")({ fg = colors.bluelest.lighten(50).rotate(20), underline = true }), -- @markup.link.label      link, reference descriptions
		sym("@markup.link.url")({ fg = colors.greylest }), -- @markup.link.url        URL-style links
		--
		sym("@markup.raw")({
			fg = colors.bluelest.lighten(50),
			bg = colors.bluelest.lighten(-50).saturate(-80),
			bold = true,
		}), -- @markup.raw             literal or verbatim text (e.g. inline code)
		sym("@markup.raw.block")({ bg = colors.bg.lighten(5) }), -- @markup.raw.block       literal or verbatim text as a stand-alone block

		sym("@markup.list")({ fg = colors.bluelest.lighten(50) }), -- @markup.list            list markers
		sym("@markup.list.checked")({ fg = colors.roxanelest }), -- @markup.list.checked    checked todo-style list markers
		sym("@markup.list.unchecked")({ fg = colors.roxanelest.lighten(20) }), -- @markup.list.unchecked  unchecked todo-style list markers
		--
		-- @diff.plus              added text (for diff files)
		-- @diff.minus             deleted text (for diff files)
		-- @diff.delta             changed text (for diff files)
		--
		sym("@tag")({ fg = colors.roxaner.lighten(50) }), -- @tag                    XML-style tag names (e.g. in XML, HTML, etc.)
		sym("@tag.builtin")({ sym("@tag") }), -- @tag.builtin            builtin tag names (e.g. HTML5 tags)
		-- @tag.attribute          XML-style tag attributes
		-- @tag.delimiter          XML-style tag delimiters

		-- LSP semantic token modifiers
		sym("@lsp.mod.abstract")({ italic = true }), -- Types and member functions that are abstract
		sym("@lsp.mod.async")({ fg = colors.tealest, italic = true }), -- Functions that are marked async
		sym("@lsp.mod.declaration")({ bold = true }), -- Declarations of symbols
		sym("@lsp.mod.defaultLibrary")({ fg = colors.roxaneless.rotate(35).lighten(30) }), -- Symbols that are part of the standard library
		sym("@lsp.mod.definition")({ underline = false }), -- Definitions of symbols, for example, in header files
		sym("@lsp.mod.deprecated")({ fg = colors.bloodless, strikethrough = true }), -- Symbols that should no longer be used
		sym("@lsp.mod.documentation")({ fg = colors.blacklest }), -- Occurrences of symbols in documentation
		sym("@lsp.mod.modification")({ fg = colors.sunshine }), -- Variable references where the variable is assigned to
		sym("@lsp.mod.readonly")({ fg = colors.white, bold = true }), -- Readonly variables and member fields (constants)
		sym("@lsp.mod.static")({ fg = colors.greyer }), -- Class members (static members)

		-- lsp
		-- LspReferenceText({ fg = colors.black }),
		-- LspReferenceRead({ LspReferenceText }),
		-- LspReferenceWrite({ LspReferenceText }),

		-- LSP Kind highlight groups (for completion items) - inherit from treesitter where possible
		LspKindVariable({ sym("@variable") }),
		LspKindFunction({ sym("@function.builtin") }),
		LspKindMethod({ LspKindFunction }),
		LspKindConstructor({ sym("@constructor") }),
		LspKindClass({ sym("@type") }),
		LspKindInterface({ LspKindClass }),
		LspKindStruct({ LspKindClass }),
		LspKindModule({ sym("@module") }),
		LspKindNamespace({ LspKindModule }),
		LspKindPackage({ LspKindModule }),
		LspKindProperty({ sym("@variable.member") }),
		LspKindField({ LspKindProperty }),
		LspKindConstant({ sym("@constant") }),
		LspKindString({ sym("@string") }),
		LspKindNumber({ sym("@number") }),
		LspKindBoolean({ sym("@boolean") }),
		LspKindArray({ fg = colors.sunshine }),
		LspKindObject({ fg = colors.green }),
		LspKindKey({ fg = colors.greyer }),
		LspKindNull({ fg = colors.blood }),
		LspKindEnum({ fg = colors.orange }),
		LspKindEnumMember({ fg = colors.orangeless }),
		LspKindEvent({ fg = colors.sunshineless }),
		LspKindOperator({ fg = colors.roxane.rotate(-10) }),
		LspKindTypeParameter({ fg = colors.tealest.lighten(20) }),
		LspKindFile({ fg = colors.roxaneless }),
		LspKindFolder({ LspKindFile }),
		LspKindSnippet({ fg = colors.sunshine }),
		LspKindText({ fg = colors.whiteless }),
		LspKindUnit({ fg = colors.tealest }),
		LspKindValue({ fg = colors.white }),

		-- snacks
		-- SnacksPicker({ fg = colors.blue }),
		SnacksPickerDirectory({ fg = colors.roxanelest.lighten(75) }),
		SnacksPickerListCursorLine({ bg = CursorLine.bg.lighten(7) }),
		SnacksPickerTotals({ fg = colors.bluelest.lighten(50) }),
		SnacksPickerFile({ fg = colors.bluelest.lighten(60) }),
		SnacksPickerDir({ fg = colors.blacklest.lighten(50) }),
		SnacksPickerGitStatusUntracked({ Comment }),

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

		-- noice
		NoiceCmdline({ NormalFloat }),
		NoiceCmdlineIcon({ fg = colors.bluelest }),
		NoiceCmdlinePopup({ NormalFloat }),
		NoiceCmdlinePopupBorder({ FloatBorder }),
		NoiceCmdlinePopupTitle({ fg = colors.bluelest.lighten(50) }),
		NoiceConfirm({ NormalFloat }),
		NoiceConfirmBorder({ FloatBorder }),
		NoiceCursor({ fg = colors.fg, bg = colors.roxane }),
		NoiceFormatProgressDone({ fg = colors.green }),
		NoiceFormatProgressTodo({ fg = colors.grey }),
		NoiceLspProgressSpinner({ fg = colors.tealest }),
		NoiceLspProgressTitle({ fg = colors.bluelest }),
		NoiceLspProgressClient({ fg = colors.roxanelest }),
		NoiceMini({ NormalFloat }),
		NoicePopup({ NormalFloat }),
		NoicePopupBorder({ FloatBorder }),
		NoicePopupmenu({ NormalFloat }),
		NoicePopupmenuBorder({ FloatBorder }),
		NoicePopupmenuMatch({ fg = colors.tealest }),
		NoicePopupmenuSelected({ bg = colors.roxanelest.lighten(-20) }),
		NoiceScrollbar({ fg = colors.blackest.lighten(10) }),
		NoiceScrollbarThumb({ fg = colors.grey }),
		NoiceSplit({ NormalFloat }),
		NoiceSplitBorder({ FloatBorder }),
		NoiceVirtualText({ fg = colors.greyer, italic = true }),

		-- which-key
		WhichKey({ NormalFloat, fg = colors.roxaneless.saturate(-40).lighten(20) }),
		WhichKeyBorder({ TelescopeBorder }),
		WhichKeyDesc({ fg = colors.roxanelest.lightness(85) }), -- description
		WhichKeyFloat({ bg = colors.bg, fg = colors.fg }),
		WhichKeyGroup({ fg = colors.roxanelest.lighten(50), bold = true }), -- group name
		WhichKeyIcon({ fg = colors.bluelest }), -- icons
		WhichKeyIconAzure({ fg = colors.tealest }),
		WhichKeyIconBlue({ fg = colors.bluelest.lighten(30) }),
		WhichKeyIconCyan({ fg = colors.tealest }),
		WhichKeyIconGreen({ fg = colors.greener }),
		WhichKeyIconGrey({ fg = colors.grey }),
		WhichKeyIconOrange({ fg = colors.orangelest }),
		WhichKeyIconPurple({ fg = colors.roxaneless.lighten(35) }),
		WhichKeyIconRed({ fg = colors.bloodlest }),
		WhichKeyIconYellow({ fg = colors.sunshineless.saturate(-50) }),
		WhichKeyNormal({ fg = colors.whitelest }), -- Normal in the which-key window
		WhichKeySeparator({ fg = colors.fg }), -- the separator between the key and its description
		WhichKeyTitle({ fg = colors.roxaneless.saturate(-50), bold = true }), -- Title of the which-key window
		WhichKeyValue({ fg = colors.bluelest.lighten(50) }), -- values by plugins (like marks, registers, etc)

		-- blink-cmp
		BlinkCmpMenu({ NormalFloat }), -- The completion menu window
		BlinkCmpMenuBorder({ FloatBorder }), -- The completion menu window border
		-- BlinkCmpMenuSelection({ bg = colors.roxanelest.lighten(-20), fg = colors.white }), -- The completion menu window selected item
		BlinkCmpScrollBarThumb({ fg = colors.grey }), -- The scrollbar thumb
		BlinkCmpScrollBarGutter({ fg = colors.blackest.lighten(5) }), -- The scrollbar gutter
		BlinkCmpLabel({ fg = colors.white }), -- Label of the completion item
		BlinkCmpLabelDeprecated({ fg = colors.bloodless, strikethrough = true }), -- Deprecated label of the completion item
		BlinkCmpLabelMatch({ fg = colors.roxanelest.lighten(50), bold = true }), -- Label of the completion item when it matches the query
		BlinkCmpLabelDetail({ fg = colors.whiteless }), -- Label description of the completion item
		BlinkCmpLabelDescription({ fg = colors.greyer }), -- Label description of the completion item
		BlinkCmpKind({ fg = colors.bluelest }), -- Kind icon/text of the completion item
		BlinkCmpKindKey({ fg = colors.greyer }),
		BlinkCmpKindEnum({ fg = colors.orangeless }),
		BlinkCmpKindFile({ fg = colors.roxaneless }),
		BlinkCmpKindText({ fg = colors.whiteless }),
		BlinkCmpKindUnit({ fg = colors.tealest }),
		BlinkCmpKindArray({ fg = colors.sunshine }),
		BlinkCmpKindClass({ sym("@type") }),
		BlinkCmpKindColor({ fg = colors.roxane }),
		BlinkCmpKindEvent({ fg = colors.sunshineless }),
		BlinkCmpKindField({ sym("@variable.member") }),
		BlinkCmpKindValue({ fg = colors.white }),
		BlinkCmpKindFolder({ fg = colors.roxaneless }),
		BlinkCmpKindMethod({ sym("@function.builtin") }),
		BlinkCmpKindModule({ sym("@module") }),
		BlinkCmpKindNumber({ sym("@number") }),
		BlinkCmpKindObject({ fg = colors.green }),
		BlinkCmpKindString({ sym("@string") }),
		BlinkCmpKindStruct({ sym("@type") }),
		BlinkCmpKindBoolean({ sym("@boolean") }),
		BlinkCmpKindKeyword({ fg = colors.roxanelest }),
		BlinkCmpKindPackage({ sym("@module") }),
		BlinkCmpKindSnippet({ fg = colors.sunshine }),
		BlinkCmpKindConstant({ sym("@constant") }),
		BlinkCmpKindFunction({ sym("@function.builtin") }),
		BlinkCmpKindOperator({ Operator }),
		BlinkCmpKindProperty({ sym("@variable.member") }),
		BlinkCmpKindVariable({ sym("@variable") }),
		BlinkCmpKindInterface({ sym("@type") }),
		BlinkCmpKindNamespace({ sym("@module") }),
		BlinkCmpKindReference({ fg = colors.bluelest }),
		BlinkCmpKindEnumMember({ fg = colors.orangeless }),
		BlinkCmpKindConstructor({ sym("@constructor") }),
		BlinkCmpKindTypeParameter({ fg = colors.tealest.lighten(20) }),
		BlinkCmpSource({ fg = colors.roxaneless }), -- Source of the completion item
		BlinkCmpGhostText({ fg = colors.grey, italic = true }), -- Preview item with ghost text
		BlinkCmpDoc({ NormalFloat }), -- The documentation window
		BlinkCmpDocBorder({ FloatBorder }), -- The documentation window border
		BlinkCmpDocSeparator({ fg = colors.greyer }), -- The documentation separator between doc and detail
		BlinkCmpDocCursorLine({ bg = colors.roxanest.lighten(5) }), -- The documentation window cursor line
		BlinkCmpSignatureHelp({ NormalFloat }), -- The signature help window
		BlinkCmpSignatureHelpBorder({ FloatBorder }), -- The signature help window border
		BlinkCmpSignatureHelpActiveParameter({ fg = colors.roxane, bold = true }), -- Active parameter of the signature help

		-- mini icons
		MiniIconsAzure({ WhichKeyIconAzure }), -- azure
		MiniIconsBlue({ WhichKeyIconBlue }), -- blue
		MiniIconsCyan({ WhichKeyIconCyan }), -- cyan
		MiniIconsGreen({ WhichKeyIconGreen }), -- green
		MiniIconsGrey({ WhichKeyIconGrey }), -- grey
		MiniIconsOrange({ WhichKeyIconOrange }), -- orange
		MiniIconsPurple({ WhichKeyIconPurple }), -- purple
		MiniIconsRed({ WhichKeyIconRed }), -- red
		MiniIconsYellow({ WhichKeyIconYellow }), -- yellow

		-- render markdown
		-- RenderMarkdownH1                @markup.heading.1.markdown           H1 icons
		-- RenderMarkdownH2                @markup.heading.2.markdown           H2 icons
		-- RenderMarkdownH3                @markup.heading.3.markdown           H3 icons
		-- RenderMarkdownH4                @markup.heading.4.markdown           H4 icons
		-- RenderMarkdownH5                @markup.heading.5.markdown           H5 icons
		-- RenderMarkdownH6                @markup.heading.6.markdown           H6 icons
		RenderMarkdownH1Bg({ sym("@markup.heading.1") }), -- RenderMarkdownH1Bg              DiffText                             H1 background line
		RenderMarkdownH2Bg({ sym("@markup.heading.2") }), -- RenderMarkdownH2Bg              DiffAdd                              H2 background line
		RenderMarkdownH3Bg({ sym("@markup.heading.3") }), -- RenderMarkdownH3Bg              DiffChange                           H3 background line
		RenderMarkdownH4Bg({ sym("@markup.heading.4") }), -- RenderMarkdownH4Bg              DiffDelete                           H4 background line
		RenderMarkdownH5Bg({ sym("@markup.heading.5") }), -- RenderMarkdownH5Bg              Visual                               H5 background line
		RenderMarkdownH6Bg({ sym("@markup.heading.6") }), -- RenderMarkdownH6Bg              CursorColumn                         H6 background line
		RenderMarkdownCode({ sym("@markup.raw.block") }), -- RenderMarkdownCode              ColorColumn                          Code block
		-- RenderMarkdownCodeInfo          @label                               Code info, after
		-- RenderMarkdownCodeBorder        RenderMarkdownCode                   Code border
		-- RenderMarkdownCodeFallback      Normal                               Fallback for code
		RenderMarkdownCodeInline({ sym("@markup.raw") }), -- RenderMarkdownCodeInline        RenderMarkdownCode                   Inline code
		-- RenderMarkdownQuote             @markup.quote                        Default for block
		-- RenderMarkdownQuote1            RenderMarkdownQuote                  Level 1 block quote
		-- RenderMarkdownQuote2            RenderMarkdownQuote                  Level 2 block quote
		-- RenderMarkdownQuote3            RenderMarkdownQuote                  Level 3 block quote
		-- RenderMarkdownQuote4            RenderMarkdownQuote                  Level 4 block quote
		-- RenderMarkdownQuote5            RenderMarkdownQuote                  Level 5 block quote
		-- RenderMarkdownQuote6            RenderMarkdownQuote                  Level 6 block quote
		-- RenderMarkdownInlineHighlight   RenderMarkdownCodeInline             Inline highlights
		RenderMarkdownBullet({ fg = colors.roxane.lighten(20) }), -- RenderMarkdownBullet            Normal                               List item bullet
		-- RenderMarkdownDash              LineNr                               Thematic break line
		-- RenderMarkdownSign              SignColumn                           Sign column
		-- RenderMarkdownMath              @markup.math                         Latex lines
		-- RenderMarkdownIndent            Whitespace                           Indent icon
		-- RenderMarkdownHtmlComment       @comment                             HTML comment inline
		-- RenderMarkdownLink              @markup.link.label.markdown_inline   Image & hyperlink
		-- RenderMarkdownWikiLink          RenderMarkdownLink                   WikiLink icon & text
		-- RenderMarkdownUnchecked         @markup.list.unchecked               Unchecked checkbox
		-- RenderMarkdownChecked           @markup.list.checked                 Checked checkbox
		-- RenderMarkdownTodo              @markup.raw                          Todo custom checkbox
		RenderMarkdownTableHead({ fg = colors.roxaneless }), -- RenderMarkdownTableHead         @markup.heading                      Pipe table heading
		RenderMarkdownTableRow({ fg = colors.roxaneless }), -- RenderMarkdownTableRow          Normal                               Pipe table body rows
		-- RenderMarkdownTableFill         Conceal                              Pipe table inline
		-- RenderMarkdownSuccess           DiagnosticOk                         Success related
		-- RenderMarkdownInfo              DiagnosticInfo                       Info related
		-- RenderMarkdownHint              DiagnosticHint                       Hint related
		-- RenderMarkdownWarn              DiagnosticWarn                       Warning related
		-- RenderMarkdownError             DiagnosticError                      Error related
	}
end)
return theme
