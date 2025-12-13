local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv

local roxanest = hsl(270, 63, 15)
local roxaner = hsl(270, 63, 25)
local roxane = hsl(270, 63, 35)
local roxaneless = hsl(270, 63, 45)
local roxanelest = hsl(270, 63, 55)

local bloodest = hsl(347, 63, 15)
local blooder = hsl(347, 63, 25)
local blood = hsl(347, 63, 35)
local bloodless = hsl(347, 63, 45)
local bloodlest = hsl(347, 63, 55)

local teaest = hsl(184, 63, 15)
local teaer = hsl(184, 63, 25)
local tea = hsl(184, 63, 35)
local tealess = hsl(184, 63, 45)
local tealest = hsl(184, 63, 55)

local greenest = hsl(140, 63, 15)
local greener = hsl(140, 63, 25)
local green = hsl(140, 63, 35)
local greenless = hsl(140, 63, 45)
local greenlest = hsl(140, 63, 55)

local sunshinest = hsl(62, 63, 15)
local sunshiner = hsl(62, 63, 25)
local sunshine = hsl(62, 63, 35)
local sunshineless = hsl(62, 63, 45)
local sunshinelest = hsl(62, 63, 55)

local bluest = hsl(232, 63, 15)
local bluer = hsl(232, 63, 25)
local blue = hsl(232, 63, 35)
local blueless = hsl(232, 63, 45)
local bluelest = hsl(232, 63, 55)

local orangest = hsl(14, 63, 15)
local oranger = hsl(14, 63, 25)
local orange = hsl(14, 63, 35)
local orangeless = hsl(14, 63, 45)
local orangelest = hsl(14, 63, 55)

local blackest = hsl(270, 15, 5)
local blacker = hsl(270, 15, 10)
local black = hsl(270, 15, 15)
local blackless = hsl(270, 15, 20)
local blacklest = hsl(270, 15, 25)

local greyest = hsl(270, 5, 30)
local greyer = hsl(270, 5, 40)
local grey = hsl(270, 5, 50)
local greyless = hsl(270, 5, 60)
local greylest = hsl(270, 5, 70)

local fg = greylest.lighten(50)
local bg = blackest.lighten(5)

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		SpecialKey({ fg = "#545c7e" }), -- SpecialKey     xxx guifg=#545c7e
		EndOfBuffer({ fg = "#222436" }), -- EndOfBuffer    xxx guifg=#222436
		TermCursor({ gui = "reverse" }), -- TermCursor     xxx cterm=reverse gui=reverse
		GitSignsAddInline({ TermCursor }), -- GitSignsAddInline xxx links to TermCursor
		GitSignsDeleteInline({ TermCursor }), -- GitSignsDeleteInline xxx links to TermCursor
		GitSignsChangeInline({ TermCursor }), -- GitSignsChangeInline xxx links to TermCursor
		NonText({ fg = "#545c7e" }), -- NonText        xxx guifg=#545c7e
		TelescopePreviewHyphen({ NonText }), -- TelescopePreviewHyphen xxx links to NonText
		TelescopePromptCounter({ NonText }), -- TelescopePromptCounter xxx links to NonText
		TelescopeResultsDiffUntracked({ NonText }), -- TelescopeResultsDiffUntracked xxx links to NonText
		SnacksPickerPathHidden({ NonText }), -- SnacksPickerPathHidden xxx links to NonText
		SnacksPickerDir({ NonText }), -- SnacksPickerDir xxx links to NonText
		SnacksPickerBufFlags({ NonText }), -- SnacksPickerBufFlags xxx links to NonText
		SnacksPickerKeymapRhs({ NonText }), -- SnacksPickerKeymapRhs xxx links to NonText
		SnacksPickerGitStatusIgnored({ NonText }), -- SnacksPickerGitStatusIgnored xxx links to NonText
		SnacksPickerGitStatusUntracked({ NonText }), -- SnacksPickerGitStatusUntracked xxx links to NonText
		SnacksPickerPathIgnored({ NonText }), -- SnacksPickerPathIgnored xxx links to NonText
		SnacksPickerTotals({ NonText }), -- SnacksPickerTotals xxx links to NonText
		SnacksPickerUnselected({ NonText }), -- SnacksPickerUnselected xxx links to NonText
		NoiceLspProgressTitle({ NonText }), -- NoiceLspProgressTitle xxx links to NonText
		NoiceFormatLevelOff({ NonText }), -- NoiceFormatLevelOff xxx links to NonText
		NoiceFormatLevelTrace({ NonText }), -- NoiceFormatLevelTrace xxx links to NonText
		NoiceFormatLevelDebug({ NonText }), -- NoiceFormatLevelDebug xxx links to NonText
		NoiceFormatKind({ NonText }), -- NoiceFormatKind xxx links to NonText
		NoiceFormatEvent({ NonText }), -- NoiceFormatEvent xxx links to NonText
		SnacksWinKeySep({ NonText }), -- SnacksWinKeySep xxx links to NonText
		SnacksNotifierFooterTrace({ NonText }), -- SnacksNotifierFooterTrace xxx links to NonText
		SnacksNotifierFooterDebug({ NonText }), -- SnacksNotifierFooterDebug xxx links to NonText
		GitSignsCurrentLineBlame({ NonText }), -- GitSignsCurrentLineBlame xxx links to NonText
		Directory({ fg = roxaneless }), -- Directory      xxx guifg=#82aaff
		LspKindFolder({ Directory }), -- LspKindFolder  xxx links to Directory
		MiniFilesDirectory({ Directory }), -- MiniFilesDirectory xxx links to Directory
		MiniPickIconDirectory({ Directory }), -- MiniPickIconDirectory xxx links to Directory
		TelescopePreviewDate({ Directory }), -- TelescopePreviewDate xxx links to Directory
		TelescopePreviewDirectory({ Directory }), -- TelescopePreviewDirectory xxx links to Directory
		SnacksPickerDirectory({ fg = roxanelest.lighten(50) }), -- SnacksPickerDirectory xxx links to Directory
		TroubleFilename({ fg = greylest }), -- TroubleFilename xxx links to Directory
		TroubleDirectory({ SnacksPickerDirectory }), -- TroubleDirectory xxx links to Directory
		ErrorMsg({ fg = bloodlest }), -- ErrorMsg       xxx guifg=#c53b53
		NvimInvalidSpacing({ ErrorMsg }), -- NvimInvalidSpacing xxx links to ErrorMsg
		IncSearch({ fg = greylest.lighten(50), bg = orangelest }), -- IncSearch      xxx guifg=#1b1d2b guibg=#ff966c
		CurSearch({ IncSearch }), -- CurSearch      xxx links to IncSearch
		MiniOperatorsExchangeFrom({ IncSearch }), -- MiniOperatorsExchangeFrom xxx links to IncSearch
		MiniPickPreviewRegion({ IncSearch }), -- MiniPickPreviewRegion xxx links to IncSearch
		Search({ fg = greylest.lighten(50), bg = blueless }), -- Search         xxx guifg=#c8d3f5 guibg=#3e68d7
		TelescopePreviewMatch({ Search }), -- TelescopePreviewMatch xxx links to Search
		SnacksPickerSearch({ Search }), -- SnacksPickerSearch xxx links to Search
		MoreMsg({ fg = "#82aaff" }), -- MoreMsg        xxx guifg=#82aaff
		ModeMsg({ fg = "#828bb8", gui = "bold" }), -- ModeMsg        xxx cterm=bold gui=bold guifg=#828bb8
		LineNr({ fg = greyest }), -- LineNr         xxx guifg=#3b4261
		TelescopeResultsLineNr({ LineNr }), -- TelescopeResultsLineNr xxx links to LineNr
		SnacksPickerTree({ fg = greyest.darken(25) }), -- SnacksPickerTree xxx links to LineNr
		SnacksPickerCol({ LineNr }), -- SnacksPickerCol xxx links to LineNr
		TroublePos({ LineNr }), -- TroublePos     xxx links to LineNr
		TroubleIndent({ LineNr }), -- TroubleIndent  xxx links to LineNr
		LineNrAbove({ fg = greyest.darken(10), italic = true }), -- LineNrAbove    xxx guifg=#3b4261
		LineNrBelow({ LineNrAbove }), -- LineNrBelow    xxx guifg=#3b4261
		CursorLineNr({ fg = roxanelest, gui = "bold" }), -- CursorLineNr   xxx cterm=bold gui=bold guifg=#ff966c
		TroubleIndentFoldClosed({ CursorLineNr }), -- TroubleIndentFoldClosed xxx links to CursorLineNr
		Question({ fg = roxane }), -- Question       xxx guifg=#82aaff
		StatusLine({ fg = greyless, bg = roxane }), -- StatusLine     xxx guifg=#828bb8 guibg=#1e2030
		MsgSeparator({ StatusLine }), -- MsgSeparator   xxx links to StatusLine
		WinBar({ StatusLine }), -- WinBar         xxx links to StatusLine
		StatusLineTerm({ StatusLine }), -- StatusLineTerm xxx links to StatusLine
		StatusLineNC({ fg = "#3b4261", bg = "#1e2030" }), -- StatusLineNC   xxx guifg=#3b4261 guibg=#1e2030
		WinBarNC({ StatusLineNC }), -- WinBarNC       xxx links to StatusLineNC
		StatusLineTermNC({ StatusLineNC }), -- StatusLineTermNC xxx links to StatusLineNC
		WinSeparator({ fg = "#1b1d2b", gui = "bold" }), -- WinSeparator   xxx cterm=bold gui=bold guifg=#1b1d2b
		SnacksWinSeparator({ WinSeparator }), -- SnacksWinSeparator xxx links to WinSeparator
		VertSplit({ fg = "#1b1d2b" }), -- VertSplit      xxx guifg=#1b1d2b
		Title({ fg = tealest, gui = "bold" }), -- Title          xxx cterm=bold gui=bold guifg=#82aaff
		sym("@markup.heading")({ Title }), -- @markup.heading xxx links to Title
		MiniDepsTitle({ Title }), -- MiniDepsTitle  xxx links to Title
		MiniMapSymbolLine({ Title }), -- MiniMapSymbolLine xxx links to Title
		SnacksDashboardTitle({ fg = roxane.lighten(50) }), -- SnacksDashboardTitle xxx links to Title
		SnacksPickerGitBranch({ Title }), -- SnacksPickerGitBranch xxx links to Title
		SnacksPickerGitType({ Title }), -- SnacksPickerGitType xxx links to Title
		NoiceLspProgressClient({ Title }), -- NoiceLspProgressClient xxx links to Title
		NoiceFormatTitle({ Title }), -- NoiceFormatTitle xxx links to Title
		NoiceCmdlinePrompt({ Title }), -- NoiceCmdlinePrompt xxx links to Title
		SnacksWinBar({ Title }), -- SnacksWinBar   xxx links to Title
		SnacksNotifierHistoryTitle({ Title }), -- SnacksNotifierHistoryTitle xxx links to Title
		Visual({ bg = roxanelest.lighten(10), fg = greylest }), -- Visual         xxx guibg=#2d3f76
		SnippetTabstop({ Visual }), -- SnippetTabstop xxx links to Visual
		MiniPickMatchMarked({ Visual }), -- MiniPickMatchMarked xxx links to Visual
		TelescopePreviewLine({ Visual }), -- TelescopePreviewLine xxx links to Visual
		TelescopeSelection({ Visual }), -- TelescopeSelection xxx links to Visual
		BlinkCmpDocCursorLine({ Visual }), -- BlinkCmpDocCursorLine xxx links to Visual
		TroublePreview({ Visual }), -- TroublePreview xxx links to Visual
		NoiceFormatConfirmDefault({ Visual }), -- NoiceFormatConfirmDefault xxx links to Visual
		SnacksPickerListCursorLine({ Visual }), -- SnacksPickerListCursorLine xxx links to Visual
		SnacksPickerPreviewCursorLine({ Visual }), -- SnacksPickerPreviewCursorLine xxx links to Visual
		WarningMsg({ fg = orangelest.lighten(30) }), -- WarningMsg     xxx guifg=#ffc777
		WildMenu({ bg = "#2d3f76" }), -- WildMenu       xxx guibg=#2d3f76
		Folded({ fg = greylest, bg = blacklest }), -- Folded         xxx guifg=#82aaff guibg=#3b4261
		FoldColumn({ fg = "#636da6", bg = blackless }), -- FoldColumn     xxx guifg=#636da6 guibg=#222436
		CursorLineFold({ FoldColumn }), -- CursorLineFold xxx links to FoldColumn
		DiffAdd({ bg = greenest }), -- DiffAdd        xxx guibg=#2a4556
		sym("@diff.plus")({ DiffAdd }), -- @diff.plus     xxx links to DiffAdd
		MiniDiffOverAdd({ DiffAdd }), -- MiniDiffOverAdd xxx links to DiffAdd
		TelescopeResultsDiffAdd({ DiffAdd }), -- TelescopeResultsDiffAdd xxx links to DiffAdd
		GitSignsAddLn({ DiffAdd }), -- GitSignsAddLn  xxx links to DiffAdd
		GitSignsAddPreview({ DiffAdd }), -- GitSignsAddPreview xxx links to DiffAdd
		DiffChange({ bg = sunshinest }), -- DiffChange     xxx guibg=#252a3f
		sym("@diff.delta")({ DiffChange }), -- @diff.delta    xxx links to DiffChange
		MiniDiffOverContext({ DiffChange }), -- MiniDiffOverContext xxx links to DiffChange
		TelescopeResultsDiffChange({ DiffChange }), -- TelescopeResultsDiffChange xxx links to DiffChange
		GitSignsChangeLn({ DiffChange }), -- GitSignsChangeLn xxx links to DiffChange
		DiffDelete({ bg = orangelest }), -- DiffDelete     xxx guibg=#4b2a3d
		sym("@diff.minus")({ DiffDelete }), -- @diff.minus    xxx links to DiffDelete
		MiniDiffOverDelete({ DiffDelete }), -- MiniDiffOverDelete xxx links to DiffDelete
		TelescopeResultsDiffDelete({ DiffDelete }), -- TelescopeResultsDiffDelete xxx links to DiffDelete
		GitSignsDeletePreview({ DiffDelete }), -- GitSignsDeletePreview xxx links to DiffDelete
		GitSignsDeleteVirtLn({ DiffDelete }), -- GitSignsDeleteVirtLn xxx links to DiffDelete
		DiffText({ bg = "#394b70" }), -- DiffText       xxx guibg=#394b70
		MiniDiffOverChange({ DiffText }), -- MiniDiffOverChange xxx links to DiffText
		SignColumn({ fg = greyest.lighten(-10), bg = blacker }), -- SignColumn     xxx guifg=#3b4261 guibg=#222436
		CursorLineSign({ SignColumn }), -- CursorLineSign xxx links to SignColumn
		Conceal({ fg = "#737aa2" }), -- Conceal        xxx guifg=#737aa2
		LspKindSnippet({ Conceal }), -- LspKindSnippet xxx links to Conceal
		SnacksPickerDimmed({ Conceal }), -- SnacksPickerDimmed xxx links to Conceal
		SpellBad({ sp = blood, gui = "undercurl" }), -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=#c53b53
		SpellCap({ sp = sunshine, gui = "undercurl" }), -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=#ffc777
		SpellRare({ sp = tea, gui = "undercurl" }), -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=#4fd6be
		SpellLocal({ sp = tealest, gui = "undercurl" }), -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=#0db9d7
		Pmenu({ fg = "#c8d3f5", bg = "#1e2030" }), -- Pmenu          xxx guifg=#c8d3f5 guibg=#1e2030
		PmenuKind({ Pmenu }), -- PmenuKind      xxx links to Pmenu
		PmenuExtra({ Pmenu }), -- PmenuExtra     xxx links to Pmenu
		NoicePopupmenu({ Pmenu }), -- NoicePopupmenu xxx links to Pmenu
		PmenuSel({ bg = roxanelest }), -- PmenuSel       xxx guibg=#363c58
		PmenuKindSel({ PmenuSel }), -- PmenuKindSel   xxx links to PmenuSel
		PmenuExtraSel({ PmenuSel }), -- PmenuExtraSel  xxx links to PmenuSel
		BlinkCmpMenuSelection({ PmenuSel }), -- BlinkCmpMenuSelection xxx links to PmenuSel
		NoicePopupmenuSelected({ PmenuSel }), -- NoicePopupmenuSelected xxx links to PmenuSel
		PmenuMatch({ fg = "#65bcff", bg = "#1e2030" }), -- PmenuMatch     xxx guifg=#65bcff guibg=#1e2030
		PmenuMatchSel({ fg = "#65bcff", bg = "#363c58" }), -- PmenuMatchSel  xxx guifg=#65bcff guibg=#363c58
		PmenuSbar({ bg = "#27293a" }), -- PmenuSbar      xxx guibg=#27293a
		BlinkCmpScrollBarGutter({ PmenuSbar }), -- BlinkCmpScrollBarGutter xxx links to PmenuSbar
		NoiceScrollbar({ PmenuSbar }), -- NoiceScrollbar xxx links to PmenuSbar
		PmenuThumb({ bg = "#3b4261" }), -- PmenuThumb     xxx guibg=#3b4261
		BlinkCmpScrollBarThumb({ PmenuThumb }), -- BlinkCmpScrollBarThumb xxx links to PmenuThumb
		NoiceScrollbarThumb({ PmenuThumb }), -- NoiceScrollbarThumb xxx links to PmenuThumb
		TabLine({ fg = "#3b4261", bg = "#1e2030" }), -- TabLine        xxx guifg=#3b4261 guibg=#1e2030
		TabLineSel({ fg = "#1b1d2b", bg = "#82aaff" }), -- TabLineSel     xxx guifg=#1b1d2b guibg=#82aaff
		TabLineFill({ bg = "#1b1d2b" }), -- TabLineFill    xxx guibg=#1b1d2b
		CursorColumn({ bg = roxanelest.lighten(10) }), -- CursorColumn   xxx guibg=#2f334d
		CursorLine({ bg = roxaner }), -- CursorLine     xxx guibg=#2f334d
		MiniFilesCursorLine({ CursorLine }), -- MiniFilesCursorLine xxx links to CursorLine
		MiniPickPreviewLine({ CursorLine }), -- MiniPickPreviewLine xxx links to CursorLine
		MiniPickMatchCurrent({ CursorLine }), -- MiniPickMatchCurrent xxx links to CursorLine
		NoiceFormatConfirm({ CursorLine }), -- NoiceFormatConfirm xxx links to CursorLine
		NoiceFormatProgressTodo({ CursorLine }), -- NoiceFormatProgressTodo xxx links to CursorLine
		SnacksPickerCursorLine({ CursorLine }), -- SnacksPickerCursorLine xxx links to CursorLine
		ColorColumn({ bg = "#1b1d2b" }), -- ColorColumn    xxx guibg=#1b1d2b
		QuickFixLine({ gui = "bold", bg = "#2d3f76" }), -- QuickFixLine   xxx cterm=bold gui=bold guibg=#2d3f76
		Whitespace({ fg = "#3b4261" }), -- Whitespace     xxx guifg=#3b4261
		NormalNC({ fg = fg, bg = black.darken(20) }), -- NormalNC       xxx guifg=#c8d3f5 guibg=#222436
		NormalFloat({ fg = "#c8d3f5", bg = black.darken(40) }), -- NormalFloat    xxx guifg=#c8d3f5 guibg=#1e2030
		MiniPickNormal({ NormalFloat }), -- MiniPickNormal xxx links to NormalFloat
		MiniMapNormal({ NormalFloat }), -- MiniMapNormal  xxx links to NormalFloat
		MiniAnimateNormalFloat({ NormalFloat }), -- MiniAnimateNormalFloat xxx links to NormalFloat
		MiniClueDescSingle({ NormalFloat }), -- MiniClueDescSingle xxx links to NormalFloat
		MiniNotifyNormal({ NormalFloat }), -- MiniNotifyNormal xxx links to NormalFloat
		MiniFilesNormal({ NormalFloat }), -- MiniFilesNormal xxx links to NormalFloat
		BlinkCmpDocSeparator({ NormalFloat }), -- BlinkCmpDocSeparator xxx links to NormalFloat
		TroubleNormalNC({ NormalFloat }), -- TroubleNormalNC xxx links to NormalFloat
		NoiceSplit({ NormalFloat }), -- NoiceSplit     xxx links to NormalFloat
		NoicePopup({ NormalFloat }), -- NoicePopup     xxx links to NormalFloat
		SnacksNormalNC({ NormalFloat }), -- SnacksNormalNC xxx links to NormalFloat
		SnacksNormal({ NormalFloat }), -- SnacksNormal   xxx links to NormalFloat
		SnacksPicker({ NormalFloat }), -- SnacksPicker   xxx links to NormalFloat
		SnacksNotifierMinimal({ NormalFloat }), -- SnacksNotifierMinimal xxx links to NormalFloat
		MsgArea({ fg = "#828bb8" }), -- MsgArea        xxx guifg=#828bb8
		NoiceCmdline({ MsgArea }), -- NoiceCmdline   xxx links to MsgArea
		NoiceMini({ MsgArea }), -- NoiceMini      xxx links to MsgArea
		FloatBorder({ fg = roxane, bg = blackest }), -- FloatBorder    xxx guifg=#589ed7 guibg=#1e2030
		MiniClueBorder({ FloatBorder }), -- MiniClueBorder xxx links to FloatBorder
		MiniFilesBorder({ FloatBorder }), -- MiniFilesBorder xxx links to FloatBorder
		MiniPickBorder({ FloatBorder }), -- MiniPickBorder xxx links to FloatBorder
		MiniNotifyBorder({ FloatBorder }), -- MiniNotifyBorder xxx links to FloatBorder
		WhichKeyBorder({ FloatBorder }), -- WhichKeyBorder xxx links to FloatBorder
		NoiceSplitBorder({ FloatBorder }), -- NoiceSplitBorder xxx links to FloatBorder
		NoicePopupmenuBorder({ FloatBorder }), -- NoicePopupmenuBorder xxx links to FloatBorder
		NoicePopupBorder({ FloatBorder }), -- NoicePopupBorder xxx links to FloatBorder
		SnacksPickerBorder({ FloatBorder }), -- SnacksPickerBorder xxx links to FloatBorder
		Cursor({ fg = "#222436", bg = "#c8d3f5" }), -- Cursor         xxx guifg=#222436 guibg=#c8d3f5
		NoiceCursor({ Cursor }), -- NoiceCursor    xxx links to Cursor
		FloatTitle({ fg = roxanelest.lighten(50), bg = "#1e2030" }), -- FloatTitle     xxx guifg=#589ed7 guibg=#1e2030
		FloatFooter({ FloatTitle }), -- FloatFooter    xxx links to FloatTitle
		MiniFilesTitle({ FloatTitle }), -- MiniFilesTitle xxx links to FloatTitle
		MiniClueTitle({ FloatTitle }), -- MiniClueTitle  xxx links to FloatTitle
		MiniNotifyTitle({ FloatTitle }), -- MiniNotifyTitle xxx links to FloatTitle
		WhichKeyTitle({ FloatTitle }), -- WhichKeyTitle  xxx links to FloatTitle
		SnacksTitle({ FloatTitle }), -- SnacksTitle    xxx links to FloatTitle
		SnacksPickerTitle({ FloatTitle }), -- SnacksPickerTitle xxx links to FloatTitle
		RedrawDebugNormal({ gui = "reverse" }), -- RedrawDebugNormal xxx cterm=reverse gui=reverse
		Underlined({ gui = "underline" }), -- Underlined     xxx cterm=underline gui=underline
		sym("@string.special.url")({ Underlined }), -- @string.special.url xxx links to Underlined
		sym("@markup.link.url")({ Underlined }), -- @markup.link.url xxx links to Underlined
		lCursor({ fg = "#222436", bg = "#c8d3f5" }), -- lCursor        xxx guifg=#222436 guibg=#c8d3f5
		CursorIM({ fg = "#222436", bg = "#c8d3f5" }), -- CursorIM       xxx guifg=#222436 guibg=#c8d3f5
		Substitute({ fg = "#1b1d2b", bg = orangeless.lighten(10) }), -- Substitute     xxx guifg=#1b1d2b guibg=#ff757f
		VisualNOS({ bg = "#2d3f76" }), -- VisualNOS      xxx guibg=#2d3f76
		Normal({ fg = fg, bg = bg }), -- Normal         xxx guifg=#c8d3f5 guibg=#222436
		Ignore({ Normal }), -- Ignore         xxx links to Normal
		NvimSpacing({ Normal }), -- NvimSpacing    xxx links to Normal
		LspKindFile({ Normal }), -- LspKindFile    xxx links to Normal
		SnacksDashboardNormal({ Normal }), -- SnacksDashboardNormal xxx links to Normal
		SnacksInputNormal({ Normal }), -- SnacksInputNormal xxx links to Normal
		SnacksPickerIconFile({ Normal }), -- SnacksPickerIconFile xxx links to Normal
		TroubleIconFile({ Normal }), -- TroubleIconFile xxx links to Normal
		NoiceConfirm({ Normal }), -- NoiceConfirm   xxx links to Normal
		NoiceCmdlinePopup({ Normal }), -- NoiceCmdlinePopup xxx links to Normal
		SnacksNotifierHistory({ Normal }), -- SnacksNotifierHistory xxx links to Normal
		Character({ fg = "#c3e88d" }), -- Character      xxx guifg=#c3e88d
		sym("@character")({ Character }), -- @character     xxx links to Character
		Constant({ fg = tealess }), -- Constant       xxx guifg=#ff966c
		Number({ fg = bluelest }), -- Number         xxx links to Constant
		Boolean({ fg = green }), -- Boolean        xxx links to Constant
		sym("@constant")({ Constant }), -- @constant      xxx links to Constant
		TelescopePreviewGroup({ Constant }), -- TelescopePreviewGroup xxx links to Constant
		TelescopePreviewUser({ Constant }), -- TelescopePreviewUser xxx links to Constant
		TelescopePreviewRead({ Constant }), -- TelescopePreviewRead xxx links to Constant
		TelescopePreviewBlock({ Constant }), -- TelescopePreviewBlock xxx links to Constant
		TelescopePreviewCharDev({ Constant }), -- TelescopePreviewCharDev xxx links to Constant
		TelescopePreviewPipe({ Constant }), -- TelescopePreviewPipe xxx links to Constant
		TelescopeResultsConstant({ Constant }), -- TelescopeResultsConstant xxx links to Constant
		SnacksPickerGitAuthor({ Constant }), -- SnacksPickerGitAuthor xxx links to Constant
		SnacksPickerAuEvent({ Constant }), -- SnacksPickerAuEvent xxx links to Constant
		NoiceLspProgressSpinner({ Constant }), -- NoiceLspProgressSpinner xxx links to Constant
		luaConstant({ Constant }), -- luaConstant    xxx links to Constant
		Statement({ fg = roxanelest.lighten(50) }), -- Statement      xxx guifg=#c099ff
		Conditional({ Statement }), -- Conditional    xxx links to Statement
		Repeat({ Statement }), -- Repeat         xxx links to Statement
		Label({ Statement }), -- Label          xxx links to Statement
		Exception({ Statement }), -- Exception      xxx links to Statement
		TelescopePreviewWrite({ Statement }), -- TelescopePreviewWrite xxx links to Statement
		TelescopePreviewSocket({ Statement }), -- TelescopePreviewSocket xxx links to Statement
		luaStatement({ Statement }), -- luaStatement   xxx links to Statement
		Keyword({ fg = roxaneless, gui = "italic" }), -- Keyword        xxx cterm=italic gui=italic guifg=#86e1fc
		TelescopePreviewSticky({ Keyword }), -- TelescopePreviewSticky xxx links to Keyword
		SnacksWinKey({ Keyword }), -- SnacksWinKey   xxx links to Keyword
		PreProc({ fg = "#86e1fc" }), -- PreProc        xxx guifg=#86e1fc
		Include({ PreProc }), -- Include        xxx links to PreProc
		Define({ PreProc }), -- Define         xxx links to PreProc
		Macro({ PreProc }), -- Macro          xxx links to PreProc
		PreCondit({ PreProc }), -- PreCondit      xxx links to PreProc
		sym("@attribute")({ PreProc }), -- @attribute     xxx links to PreProc
		sym("@keyword.directive")({ PreProc }), -- @keyword.directive xxx links to PreProc
		sym("@annotation")({ PreProc }), -- @annotation    xxx links to PreProc
		Type({ fg = "#65bcff" }), -- Type           xxx guifg=#65bcff
		StorageClass({ Type }), -- StorageClass   xxx links to Type
		Structure({ Type }), -- Structure      xxx links to Type
		Typedef({ Type }), -- Typedef        xxx links to Type
		sym("@type")({ Type }), -- @type          xxx links to Type
		NvimNumberPrefix({ Type }), -- NvimNumberPrefix xxx links to Type
		NvimOptionSigil({ Type }), -- NvimOptionSigil xxx links to Type
		sym("@markup.environment.name")({ Type }), -- @markup.environment.name xxx links to Type
		TelescopeMultiSelection({ Type }), -- TelescopeMultiSelection xxx links to Type
		SnacksPickerAuGroup({ Type }), -- SnacksPickerAuGroup xxx links to Type
		Special({ fg = roxaneless.lighten(50) }), -- Special        xxx guifg=#65bcff
		Tag({ Special }), -- Tag            xxx links to Special
		SpecialChar({ Special }), -- SpecialChar    xxx links to Special
		SpecialComment({ Special }), -- SpecialComment xxx links to Special
		sym("@constant.builtin")({ Special }), -- @constant.builtin xxx links to Special
		sym("@attribute.builtin")({ Special }), -- @attribute.builtin xxx links to Special
		sym("@function.builtin")({ Special }), -- @function.builtin xxx links to Special
		Delimiter({ Special }), -- Delimiter      xxx links to Special
		sym("@tag.builtin")({ Special }), -- @tag.builtin   xxx links to Special
		MiniMapSymbolCount({ Special }), -- MiniMapSymbolCount xxx links to Special
		LspKindColor({ Special }), -- LspKindColor   xxx links to Special
		LspKindEvent({ Special }), -- LspKindEvent   xxx links to Special
		sym("@markup.math")({ Special }), -- @markup.math   xxx links to Special
		TelescopePreviewLink({ Special }), -- TelescopePreviewLink xxx links to Special
		TelescopeMatching({ Special }), -- TelescopeMatching xxx links to Special
		SnacksDashboardFile({ Special }), -- SnacksDashboardFile xxx links to Special
		SnacksPickerIcon({ fg = roxaneless }), -- SnacksPickerIcon xxx links to Special
		SnacksPickerKeymapLhs({ Special }), -- SnacksPickerKeymapLhs xxx links to Special
		SnacksPickerIconEvent({ Special }), -- SnacksPickerIconEvent xxx links to Special
		SnacksPickerMatch({ Special }), -- SnacksPickerMatch xxx links to Special
		SnacksPickerManPage({ Special }), -- SnacksPickerManPage xxx links to Special
		SnacksPickerLspEnabled({ Special }), -- SnacksPickerLspEnabled xxx links to Special
		SnacksPickerPrompt({ Special }), -- SnacksPickerPrompt xxx links to Special
		SnacksPickerGitStatus({ Special }), -- SnacksPickerGitStatus xxx links to Special
		SnacksPickerSpecial({ Special }), -- SnacksPickerSpecial xxx links to Special
		SnacksPickerGitDate({ Special }), -- SnacksPickerGitDate xxx links to Special
		SnacksPickerUndoSaved({ Special }), -- SnacksPickerUndoSaved xxx links to Special
		SnacksPickerDiagnosticCode({ Special }), -- SnacksPickerDiagnosticCode xxx links to Special
		SnacksPickerTime({ Special }), -- SnacksPickerTime xxx links to Special
		SnacksPickerSpinner({ Special }), -- SnacksPickerSpinner xxx links to Special
		TroubleCode({ Special }), -- TroubleCode    xxx links to Special
		TroubleIconEvent({ Special }), -- TroubleIconEvent xxx links to Special
		TroubleIconDirectory({ Special }), -- TroubleIconDirectory xxx links to Special
		NoiceFormatDate({ Special }), -- NoiceFormatDate xxx links to Special
		NoicePopupmenuMatch({ Special }), -- NoicePopupmenuMatch xxx links to Special
		SnacksNotifierHistoryDateTime({ Special }), -- SnacksNotifierHistoryDateTime xxx links to Special
		Debug({ fg = "#ff966c" }), -- Debug          xxx guifg=#ff966c
		sym("@keyword.debug")({ Debug }), -- @keyword.debug xxx links to Debug
		LspCodeLens({ fg = "#636da6" }), -- LspCodeLens    xxx guifg=#636da6
		LspCodeLensSeparator({ LspCodeLens }), -- LspCodeLensSeparator xxx links to LspCodeLens
		LspInlayHint({ fg = greyest.lighten(-10), bg = bg }), -- LspInlayHint   xxx guifg=#545c7e guibg=#24283c
		LspReferenceRead({ bg = "#3b4261" }), -- LspReferenceRead xxx guibg=#3b4261
		LspReferenceText({ bg = "#3b4261" }), -- LspReferenceText xxx guibg=#3b4261
		LspReferenceTarget({ LspReferenceText }), -- LspReferenceTarget xxx links to LspReferenceText
		LspReferenceWrite({ bg = "#3b4261" }), -- LspReferenceWrite xxx guibg=#3b4261
		LspSignatureActiveParameter({ gui = "bold", bg = "#262f50" }), -- LspSignatureActiveParameter xxx cterm=bold gui=bold guibg=#262f50
		BlinkCmpSignatureHelpActiveParameter({ LspSignatureActiveParameter }), -- BlinkCmpSignatureHelpActiveParameter xxx links to LspSignatureActiveParameter
		DiagnosticError({ fg = blood }), -- DiagnosticError xxx guifg=#c53b53
		DiagnosticFloatingError({ DiagnosticError }), -- DiagnosticFloatingError xxx links to DiagnosticError
		DiagnosticVirtualLinesError({ DiagnosticError }), -- DiagnosticVirtualLinesError xxx links to DiagnosticError
		DiagnosticSignError({ DiagnosticError }), -- DiagnosticSignError xxx links to DiagnosticError
		SnacksPickerLspUnavailable({ DiagnosticError }), -- SnacksPickerLspUnavailable xxx links to DiagnosticError
		SnacksPickerGitStatusUnmerged({ DiagnosticError }), -- SnacksPickerGitStatusUnmerged xxx links to DiagnosticError
		SnacksPickerLinkBroken({ DiagnosticError }), -- SnacksPickerLinkBroken xxx links to DiagnosticError
		lualine_x_11({ DiagnosticError }), -- lualine_x_11   xxx links to DiagnosticError
		SnacksNotifierFooterError({ DiagnosticError }), -- SnacksNotifierFooterError xxx links to DiagnosticError
		DiagnosticWarn({ fg = sunshine }), -- DiagnosticWarn xxx guifg=#ffc777
		DiagnosticFloatingWarn({ DiagnosticWarn }), -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
		DiagnosticVirtualLinesWarn({ DiagnosticWarn }), -- DiagnosticVirtualLinesWarn xxx links to DiagnosticWarn
		DiagnosticSignWarn({ DiagnosticWarn }), -- DiagnosticSignWarn xxx links to DiagnosticWarn
		MiniDepsMsgBreaking({ DiagnosticWarn }), -- MiniDepsMsgBreaking xxx links to DiagnosticWarn
		SnacksPickerGitDetached({ DiagnosticWarn }), -- SnacksPickerGitDetached xxx links to DiagnosticWarn
		SnacksPickerLspAttached({ DiagnosticWarn }), -- SnacksPickerLspAttached xxx links to DiagnosticWarn
		SnacksPickerLspDisabled({ DiagnosticWarn }), -- SnacksPickerLspDisabled xxx links to DiagnosticWarn
		SnacksPickerGitStatusModified({ DiagnosticWarn }), -- SnacksPickerGitStatusModified xxx links to DiagnosticWarn
		SnacksNotifierFooterWarn({ DiagnosticWarn }), -- SnacksNotifierFooterWarn xxx links to DiagnosticWarn
		DiagnosticInfo({ fg = tealest }), -- DiagnosticInfo xxx guifg=#0db9d7
		DiagnosticFloatingInfo({ DiagnosticInfo }), -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
		DiagnosticVirtualLinesInfo({ DiagnosticInfo }), -- DiagnosticVirtualLinesInfo xxx links to DiagnosticInfo
		DiagnosticSignInfo({ DiagnosticInfo }), -- DiagnosticSignInfo xxx links to DiagnosticInfo
		MiniDepsInfo({ DiagnosticInfo }), -- MiniDepsInfo   xxx links to DiagnosticInfo
		SnacksPickerLspAttachedBuf({ DiagnosticInfo }), -- SnacksPickerLspAttachedBuf xxx links to DiagnosticInfo
		SnacksNotifierFooterInfo({ DiagnosticInfo }), -- SnacksNotifierFooterInfo xxx links to DiagnosticInfo
		DiagnosticHint({ fg = tea }), -- DiagnosticHint xxx guifg=#4fd6be
		DiagnosticFloatingHint({ DiagnosticHint }), -- DiagnosticFloatingHint xxx links to DiagnosticHint
		DiagnosticVirtualLinesHint({ DiagnosticHint }), -- DiagnosticVirtualLinesHint xxx links to DiagnosticHint
		DiagnosticSignHint({ DiagnosticHint }), -- DiagnosticSignHint xxx links to DiagnosticHint
		MiniDepsHint({ DiagnosticHint }), -- MiniDepsHint   xxx links to DiagnosticHint
		SnacksPickerGitStatusStaged({ DiagnosticHint }), -- SnacksPickerGitStatusStaged xxx links to DiagnosticHint
		SnacksPickerFileType({ DiagnosticHint }), -- SnacksPickerFileType xxx links to DiagnosticHint
		SnacksStatusColumnMark({ DiagnosticHint }), -- SnacksStatusColumnMark xxx links to DiagnosticHint
		DiagnosticOk({ fg = greener }), -- DiagnosticOk   xxx ctermfg=10 guifg=NvimLightGreen
		DiagnosticFloatingOk({ DiagnosticOk }), -- DiagnosticFloatingOk xxx links to DiagnosticOk
		DiagnosticVirtualTextOk({ DiagnosticOk }), -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
		DiagnosticVirtualLinesOk({ DiagnosticOk }), -- DiagnosticVirtualLinesOk xxx links to DiagnosticOk
		DiagnosticSignOk({ DiagnosticOk }), -- DiagnosticSignOk xxx links to DiagnosticOk
		DiagnosticVirtualTextError({ fg = bloodless, bg = bloodest }), -- DiagnosticVirtualTextError xxx guifg=#c53b53 guibg=#322639
		NoiceFormatLevelError({ DiagnosticVirtualTextError }), -- NoiceFormatLevelError xxx links to DiagnosticVirtualTextError
		DiagnosticVirtualTextWarn({ fg = sunshineless, bg = sunshinest }), -- DiagnosticVirtualTextWarn xxx guifg=#ffc777 guibg=#38343d
		NoiceFormatLevelWarn({ DiagnosticVirtualTextWarn }), -- NoiceFormatLevelWarn xxx links to DiagnosticVirtualTextWarn
		DiagnosticVirtualTextInfo({ fg = tealest, bg = teaest }), -- DiagnosticVirtualTextInfo xxx guifg=#0db9d7 guibg=#203346
		NoiceFormatLevelInfo({ DiagnosticVirtualTextInfo }), -- NoiceFormatLevelInfo xxx links to DiagnosticVirtualTextInfo
		NoiceVirtualText({ DiagnosticVirtualTextInfo }), -- NoiceVirtualText xxx links to DiagnosticVirtualTextInfo
		DiagnosticVirtualTextHint({ fg = greenlest, bg = greenest }), -- DiagnosticVirtualTextHint xxx guifg=#4fd6be guibg=#273644
		DiagnosticUnnecessary({ fg = greyest.lighten(-20) }), -- DiagnosticUnnecessary xxx guifg=#444a73
		Comment({ fg = blackest.lighten(30).rotate(-50), gui = "italic" }), -- Comment        xxx cterm=italic gui=italic guifg=#636da6
		sym("@comment")({ Comment }), -- @comment       xxx links to Comment
		MiniDepsPlaceholder({ Comment }), -- MiniDepsPlaceholder xxx links to Comment
		MiniJump2dDim({ Comment }), -- MiniJump2dDim  xxx links to Comment
		MiniDepsTitleSame({ Comment }), -- MiniDepsTitleSame xxx links to Comment
		SnacksPickerComment({ Comment }), -- SnacksPickerComment xxx links to Comment
		SnacksPickerDesc({ Comment }), -- SnacksPickerDesc xxx links to Comment
		SnacksPickerLink({ Comment }), -- SnacksPickerLink xxx links to Comment
		SnacksPickerDiagnosticSource({ Comment }), -- SnacksPickerDiagnosticSource xxx links to Comment
		TroubleSource({ Comment }), -- TroubleSource  xxx links to Comment
		TroubleDiagnosticsItemSource({ Comment }), -- TroubleDiagnosticsItemSource xxx links to Comment
		TroubleDiagnosticsCode({ Comment }), -- TroubleDiagnosticsCode xxx links to Comment
		luaComment({ Comment }), -- luaComment     xxx links to Comment
		sym("@variable")({ fg = greylest.lighten(30) }), -- @variable      xxx guifg=#c8d3f5
		sym("@lsp.type.generic")({ sym("@variable") }), -- @lsp.type.generic xxx links to @variable
		LspKindVariable({ sym("@variable") }), -- LspKindVariable xxx links to @variable
		sym("@lsp.typemod.variable.injected")({ sym("@variable") }), -- @lsp.typemod.variable.injected xxx links to @variable
		sym("@lsp.type.namespace.python")({ sym("@variable") }), -- @lsp.type.namespace.python xxx links to @variable
		SnacksPickerIconVariable({ sym("@variable") }), -- SnacksPickerIconVariable xxx links to @variable
		TroubleIconVariable({ sym("@variable") }), -- TroubleIconVariable xxx links to @variable
		sym("@variable.builtin")({ fg = "#ff757f" }), -- @variable.builtin xxx guifg=#ff757f
		sym("@lsp.typemod.variable.defaultLibrary")({ sym("@variable.builtin") }), -- @lsp.typemod.variable.defaultLibrary xxx links to @variable.builtin
		sym("@lsp.type.selfKeyword")({ sym("@variable.builtin") }), -- @lsp.type.selfKeyword xxx links to @variable.builtin
		sym("@lsp.type.selfTypeKeyword")({ sym("@variable.builtin") }), -- @lsp.type.selfTypeKeyword xxx links to @variable.builtin
		sym("@namespace.builtin")({ sym("@variable.builtin") }), -- @namespace.builtin xxx links to @variable.builtin
		SnacksPickerKeymapNowait({ sym("@variable.builtin") }), -- SnacksPickerKeymapNowait xxx links to @variable.builtin
		SnacksPickerUndoCurrent({ sym("@variable.builtin") }), -- SnacksPickerUndoCurrent xxx links to @variable.builtin
		SnacksPickerGitCommit({ sym("@variable.builtin") }), -- SnacksPickerGitCommit xxx links to @variable.builtin
		sym("@variable.parameter")({ fg = "#ffc777" }), -- @variable.parameter xxx guifg=#ffc777
		sym("@lsp.type.parameter")({ sym("@variable.parameter") }), -- @lsp.type.parameter xxx links to @variable.parameter
		sym("@variable.parameter.builtin")({ fg = "#f4c990" }), -- @variable.parameter.builtin xxx guifg=#f4c990
		sym("@module.builtin")({ fg = "#ff757f" }), -- @module.builtin xxx guifg=#ff757f
		sym("@label")({ fg = "#82aaff" }), -- @label         xxx guifg=#82aaff
		String({ fg = green.lighten(50) }), -- String         xxx guifg=#c3e88d
		sym("@string")({ String }), -- @string        xxx links to String
		NvimString({ String }), -- NvimString     xxx links to String
		sym("@markup.raw")({ String }), -- @markup.raw    xxx links to String
		TelescopePreviewSize({ String }), -- TelescopePreviewSize xxx links to String
		TelescopePreviewExecute({ String }), -- TelescopePreviewExecute xxx links to String
		SnacksPickerAuPattern({ String }), -- SnacksPickerAuPattern xxx links to String
		SnacksPickerRow({ String }), -- SnacksPickerRow xxx links to String
		luaString2({ String }), -- luaString2     xxx links to String
		luaString({ String }), -- luaString      xxx links to String
		sym("@string.regexp")({ fg = "#b4f9f8" }), -- @string.regexp xxx guifg=#b4f9f8
		sym("@lsp.type.regexp")({ sym("@string.regexp") }), -- @lsp.type.regexp xxx links to @string.regexp
		sym("@string.escape")({ fg = "#c099ff" }), -- @string.escape xxx guifg=#c099ff
		sym("@lsp.type.escapeSequence")({ sym("@string.escape") }), -- @lsp.type.escapeSequence xxx links to @string.escape
		sym("@type.builtin")({ fg = "#589ed7" }), -- @type.builtin  xxx guifg=#589ed7
		sym("@lsp.typemod.class.defaultLibrary")({ sym("@type.builtin") }), -- @lsp.typemod.class.defaultLibrary xxx links to @type.builtin
		sym("@lsp.type.builtinType")({ sym("@type.builtin") }), -- @lsp.type.builtinType xxx links to @type.builtin
		sym("@lsp.typemod.enum.defaultLibrary")({ sym("@type.builtin") }), -- @lsp.typemod.enum.defaultLibrary xxx links to @type.builtin
		sym("@lsp.typemod.struct.defaultLibrary")({ sym("@type.builtin") }), -- @lsp.typemod.struct.defaultLibrary xxx links to @type.builtin
		sym("@property")({ fg = "#4fd6be" }), -- @property      xxx guifg=#4fd6be
		sym("@lsp.type.property")({ sym("@property") }), -- @lsp.type.property xxx links to @property
		LspKindProperty({ sym("@property") }), -- LspKindProperty xxx links to @property
		sym("@tag.attribute")({ sym("@property") }), -- @tag.attribute xxx links to @property
		dosIniLabel({ sym("@property") }), -- dosIniLabel    xxx links to @property
		SnacksPickerIconProperty({ sym("@property") }), -- SnacksPickerIconProperty xxx links to @property
		TroubleIconProperty({ sym("@property") }), -- TroubleIconProperty xxx links to @property
		Identifier({ fg = "#c099ff" }), -- Identifier     xxx guifg=#c099ff
		NvimIdentifier({ Identifier }), -- NvimIdentifier xxx links to Identifier
		sym("@markup.link.label.symbol")({ Identifier }), -- @markup.link.label.symbol xxx links to Identifier
		TelescopePromptPrefix({ Identifier }), -- TelescopePromptPrefix xxx links to Identifier
		TelescopeMultiIcon({ Identifier }), -- TelescopeMultiIcon xxx links to Identifier
		TelescopeResultsIdentifier({ Identifier }), -- TelescopeResultsIdentifier xxx links to Identifier
		luaFunc({ Identifier }), -- luaFunc        xxx links to Identifier
		Function({ fg = "#82aaff" }), -- Function       xxx guifg=#82aaff
		sym("@function")({ Function }), -- @function      xxx links to Function
		sym("@function.method")({ Function }), -- @function.method xxx links to Function
		TelescopeResultsField({ Function }), -- TelescopeResultsField xxx links to Function
		TelescopeResultsClass({ Function }), -- TelescopeResultsClass xxx links to Function
		TelescopeResultsFunction({ Function }), -- TelescopeResultsFunction xxx links to Function
		SnacksPickerBufType({ Function }), -- SnacksPickerBufType xxx links to Function
		SnacksPickerCmd({ Function }), -- SnacksPickerCmd xxx links to Function
		SnacksWinKeyDesc({ Function }), -- SnacksWinKeyDesc xxx links to Function
		luaMetaMethod({ Function }), -- luaMetaMethod  xxx links to Function
		luaFunction({ Function }), -- luaFunction    xxx links to Function
		sym("@constructor")({ fg = "#c099ff" }), -- @constructor   xxx guifg=#c099ff
		LspKindConstructor({ sym("@constructor") }), -- LspKindConstructor xxx links to @constructor
		SnacksPickerIconConstructor({ sym("@constructor") }), -- SnacksPickerIconConstructor xxx links to @constructor
		SnacksPickerCmdBuiltin({ sym("@constructor") }), -- SnacksPickerCmdBuiltin xxx links to @constructor
		TroubleIconConstructor({ sym("@constructor") }), -- TroubleIconConstructor xxx links to @constructor
		sym("@operator")({ fg = "#89ddff" }), -- @operator      xxx guifg=#89ddff
		sym("@lsp.type.operator")({ sym("@operator") }), -- @lsp.type.operator xxx links to @operator
		sym("@lsp.typemod.operator.injected")({ sym("@operator") }), -- @lsp.typemod.operator.injected xxx links to @operator
		sym("@keyword.operator")({ sym("@operator") }), -- @keyword.operator xxx links to @operator
		LspKindOperator({ sym("@operator") }), -- LspKindOperator xxx links to @operator
		SnacksPickerIconOperator({ sym("@operator") }), -- SnacksPickerIconOperator xxx links to @operator
		TroubleIconOperator({ sym("@operator") }), -- TroubleIconOperator xxx links to @operator
		Operator({ fg = orangelest.lighten(5) }), -- Operator       xxx guifg=#89ddff
		NvimAssignment({ Operator }), -- NvimAssignment xxx links to Operator
		NvimOperator({ Operator }), -- NvimOperator   xxx links to Operator
		TelescopeResultsOperator({ Operator }), -- TelescopeResultsOperator xxx links to Operator
		luaOperator({ Operator }), -- luaOperator    xxx links to Operator
		sym("@keyword")({ fg = "#fca7ea", gui = "italic" }), -- @keyword       xxx cterm=italic gui=italic guifg=#fca7ea
		sym("@lsp.type.keyword")({ sym("@keyword") }), -- @lsp.type.keyword xxx links to @keyword
		sym("@type.qualifier")({ sym("@keyword") }), -- @type.qualifier xxx links to @keyword
		sym("@keyword.coroutine")({ sym("@keyword") }), -- @keyword.coroutine xxx links to @keyword
		sym("@lsp.typemod.keyword.injected")({ sym("@keyword") }), -- @lsp.typemod.keyword.injected xxx links to @keyword
		sym("@keyword.return")({ sym("@keyword") }), -- @keyword.return xxx links to @keyword
		SnacksPickerIconName({ sym("@keyword") }), -- SnacksPickerIconName xxx links to @keyword
		SnacksPickerInputSearch({ sym("@keyword") }), -- SnacksPickerInputSearch xxx links to @keyword
		sym("@punctuation.special")({ fg = "#89ddff" }), -- @punctuation.special xxx guifg=#89ddff
		sym("@comment.error")({ fg = "#c53b53" }), -- @comment.error xxx guifg=#c53b53
		sym("@comment.warning")({ fg = "#ffc777" }), -- @comment.warning xxx guifg=#ffc777
		sym("@comment.note")({ fg = "#4fd6be" }), -- @comment.note  xxx guifg=#4fd6be
		sym("@comment.todo")({ fg = "#82aaff" }), -- @comment.todo  xxx guifg=#82aaff
		Todo({ fg = "#222436", bg = "#ffc777" }), -- Todo           xxx guifg=#222436 guibg=#ffc777
		luaTodo({ Todo }), -- luaTodo        xxx links to Todo
		sym("@markup.strong")({ gui = "bold" }), -- @markup.strong xxx cterm=bold gui=bold
		sym("@markup.italic")({ gui = "italic" }), -- @markup.italic xxx cterm=italic gui=italic
		sym("@markup.strikethrough")({ gui = "strikethrough" }), -- @markup.strikethrough xxx cterm=strikethrough gui=strikethrough
		sym("@markup.underline")({ gui = "underline" }), -- @markup.underline xxx cterm=underline gui=underline
		sym("@markup.link")({ fg = "#4fd6be" }), -- @markup.link   xxx guifg=#4fd6be
		LspKindReference({ sym("@markup.link") }), -- LspKindReference xxx links to @markup.link
		WhichKeyIcon({ sym("@markup.link") }), -- WhichKeyIcon   xxx links to @markup.link
		Added({ fg = "nvimlightgreen" }), -- Added          xxx ctermfg=10 guifg=NvimLightGreen
		SnacksPickerUndoAdded({ Added }), -- SnacksPickerUndoAdded xxx links to Added
		SnacksPickerGitStatusAdded({ Added }), -- SnacksPickerGitStatusAdded xxx links to Added
		Removed({ fg = "nvimlightred" }), -- Removed        xxx ctermfg=9 guifg=NvimLightRed
		SnacksPickerUndoRemoved({ Removed }), -- SnacksPickerUndoRemoved xxx links to Removed
		SnacksPickerGitStatusDeleted({ Removed }), -- SnacksPickerGitStatusDeleted xxx links to Removed
		Changed({ fg = "nvimlightcyan" }), -- Changed        xxx ctermfg=14 guifg=NvimLightCyan
		sym("@markup.heading.1.delimiter.vimdoc")({ sp = "fg", fg = "bg", gui = "underdouble,nocombine", bg = "bg" }), -- @markup.heading.1.delimiter.vimdoc xxx cterm=underdouble,nocombine gui=underdouble,nocombine guifg=bg guibg=bg guisp=fg
		sym("@markup.heading.2.delimiter.vimdoc")({ sp = "fg", fg = "bg", gui = "underline,nocombine", bg = "bg" }), -- @markup.heading.2.delimiter.vimdoc xxx cterm=underline,nocombine gui=underline,nocombine guifg=bg guibg=bg guisp=fg
		sym("@lsp.type.interface")({ fg = "#83c3fc" }), -- @lsp.type.interface xxx guifg=#83c3fc
		LspKindInterface({ sym("@lsp.type.interface") }), -- LspKindInterface xxx links to @lsp.type.interface
		SnacksPickerIconInterface({ sym("@lsp.type.interface") }), -- SnacksPickerIconInterface xxx links to @lsp.type.interface
		TroubleIconInterface({ sym("@lsp.type.interface") }), -- TroubleIconInterface xxx links to @lsp.type.interface
		DiagnosticDeprecated({ sp = "nvimlightred", gui = "strikethrough" }), -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=NvimLightRed
		sym("@lsp.mod.deprecated")({ DiagnosticDeprecated }), -- @lsp.mod.deprecated xxx links to DiagnosticDeprecated
		FloatShadow({ bg = "nvimdarkgrey4", blend = 80 }), -- FloatShadow    xxx ctermbg=0 guibg=NvimDarkGrey4 blend=80
		FloatShadowThrough({ bg = "nvimdarkgrey4", blend = 100 }), -- FloatShadowThrough xxx ctermbg=0 guibg=NvimDarkGrey4 blend=100
		MatchParen({ fg = "#ff966c", gui = "bold" }), -- MatchParen     xxx cterm=bold gui=bold guifg=#ff966c
		RedrawDebugClear({ bg = "nvimdarkyellow" }), -- RedrawDebugClear xxx ctermfg=0 ctermbg=11 guibg=NvimDarkYellow
		RedrawDebugComposed({ bg = "nvimdarkgreen" }), -- RedrawDebugComposed xxx ctermfg=0 ctermbg=10 guibg=NvimDarkGreen
		RedrawDebugRecompose({ bg = "nvimdarkred" }), -- RedrawDebugRecompose xxx ctermfg=0 ctermbg=9 guibg=NvimDarkRed
		Error({ fg = "#c53b53" }), -- Error          xxx guifg=#c53b53
		NvimInvalid({ Error }), -- NvimInvalid    xxx links to Error
		SnacksPickerGitBreaking({ Error }), -- SnacksPickerGitBreaking xxx links to Error
		luaParenError({ Error }), -- luaParenError  xxx links to Error
		luaError({ Error }), -- luaError       xxx links to Error
		DiagnosticUnderlineError({ sp = "#c53b53", gui = "undercurl" }), -- DiagnosticUnderlineError xxx cterm=undercurl gui=undercurl guisp=#c53b53
		DiagnosticUnderlineWarn({ sp = "#ffc777", gui = "undercurl" }), -- DiagnosticUnderlineWarn xxx cterm=undercurl gui=undercurl guisp=#ffc777
		DiagnosticUnderlineInfo({ sp = "#0db9d7", gui = "undercurl" }), -- DiagnosticUnderlineInfo xxx cterm=undercurl gui=undercurl guisp=#0db9d7
		DiagnosticUnderlineHint({ sp = "#4fd6be", gui = "undercurl" }), -- DiagnosticUnderlineHint xxx cterm=undercurl gui=undercurl guisp=#4fd6be
		DiagnosticUnderlineOk({ sp = "nvimlightgreen", gui = "underline" }), -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=NvimLightGreen
		NvimInternalError({ fg = "red", bg = "red" }), -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
		NvimFigureBrace({ NvimInternalError }), -- NvimFigureBrace xxx links to NvimInternalError
		NvimSingleQuotedUnknownEscape({ NvimInternalError }), -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
		NvimInvalidSingleQuotedUnknownEscape({ NvimInternalError }), -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
		WhichKeyNormal({ bg = blackest }), -- WhichKeyNormal xxx guibg=#1e2030
		sym("@markup.list")({ fg = "#89ddff" }), -- @markup.list   xxx guifg=#89ddff
		sym("@lsp.type.formatSpecifier")({ sym("@markup.list") }), -- @lsp.type.formatSpecifier xxx links to @markup.list
		sym("@lsp.typemod.type.defaultLibrary")({ fg = "#589ed7" }), -- @lsp.typemod.type.defaultLibrary xxx guifg=#589ed7
		MiniStatuslineInactive({ fg = "#82aaff", bg = "#1e2030" }), -- MiniStatuslineInactive xxx guifg=#82aaff guibg=#1e2030
		sym("@markup.heading.5.markdown")({ fg = "#c099ff", gui = "bold", bg = "#32304a" }), -- @markup.heading.5.markdown xxx cterm=bold gui=bold guifg=#c099ff guibg=#32304a
		NeotestNamespace({ fg = "#41a6b5" }), -- NeotestNamespace xxx guifg=#41a6b5
		sym("@lsp.type.unresolvedReference")({ sp = "#c53b53", gui = "undercurl" }), -- @lsp.type.unresolvedReference xxx cterm=undercurl gui=undercurl guisp=#c53b53
		RenderMarkdownH3Bg({ bg = "#32383f" }), -- RenderMarkdownH3Bg xxx guibg=#32383f
		RenderMarkdownH5Fg({ fg = "#c099ff", gui = "bold" }), -- RenderMarkdownH5Fg xxx cterm=bold gui=bold guifg=#c099ff
		RenderMarkdownH2Fg({ fg = "#ffc777", gui = "bold" }), -- RenderMarkdownH2Fg xxx cterm=bold gui=bold guifg=#ffc777
		RenderMarkdownH4Fg({ fg = "#4fd6be", gui = "bold" }), -- RenderMarkdownH4Fg xxx cterm=bold gui=bold guifg=#4fd6be
		RenderMarkdownH8Fg({ fg = "#ff757f", gui = "bold" }), -- RenderMarkdownH8Fg xxx cterm=bold gui=bold guifg=#ff757f
		RenderMarkdownCode({ bg = "#1e2030" }), -- RenderMarkdownCode xxx guibg=#1e2030
		RenderMarkdownH7Fg({ fg = "#ff966c", gui = "bold" }), -- RenderMarkdownH7Fg xxx cterm=bold gui=bold guifg=#ff966c
		RenderMarkdownH7Bg({ bg = "#382f3b" }), -- RenderMarkdownH7Bg xxx guibg=#382f3b
		SnacksPickerSelected({ fg = "#ff007c" }), -- SnacksPickerSelected xxx guifg=#ff007c
		RenderMarkdownTableRow({ fg = "#ff966c" }), -- RenderMarkdownTableRow xxx guifg=#ff966c
		sym("@markup.raw.markdown_inline")({ fg = "#82aaff", bg = "#444a73" }), -- @markup.raw.markdown_inline xxx guifg=#82aaff guibg=#444a73
		RenderMarkdownCodeInline({ sym("@markup.raw.markdown_inline") }), -- RenderMarkdownCodeInline xxx links to @markup.raw.markdown_inline
		SnacksPickerCode({ sym("@markup.raw.markdown_inline") }), -- SnacksPickerCode xxx links to @markup.raw.markdown_inline
		RenderMarkdownH6Bg({ bg = "#383148" }), -- RenderMarkdownH6Bg xxx guibg=#383148
		MiniStatuslineModeReplace({ fg = "#1b1d2b", gui = "bold", bg = "#ff757f" }), -- MiniStatuslineModeReplace xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#ff757f
		RenderMarkdownH8Bg({ bg = "#382c3d" }), -- RenderMarkdownH8Bg xxx guibg=#382c3d
		NormalSB({ fg = "#828bb8", bg = "#1e2030" }), -- NormalSB       xxx guifg=#828bb8 guibg=#1e2030
		SnacksNotifierTrace({ fg = "#c8d3f5", bg = "#222436" }), -- SnacksNotifierTrace xxx guifg=#c8d3f5 guibg=#222436
		SnacksDashboardSpecial({ fg = "#fca7ea" }), -- SnacksDashboardSpecial xxx guifg=#fca7ea
		MiniStatuslineModeNormal({ fg = "#1b1d2b", gui = "bold", bg = "#82aaff" }), -- MiniStatuslineModeNormal xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#82aaff
		SnacksDashboardHeader({ fg = "#82aaff" }), -- SnacksDashboardHeader xxx guifg=#82aaff
		SnacksIndentScope({ fg = "#65bcff", gui = "nocombine" }), -- SnacksIndentScope xxx cterm=nocombine gui=nocombine guifg=#65bcff
		SnacksIndentChunk({ SnacksIndentScope }), -- SnacksIndentChunk xxx links to SnacksIndentScope
		SnacksProfilerBadgeInfo({ fg = "#65bcff", bg = "#29334a" }), -- SnacksProfilerBadgeInfo xxx guifg=#65bcff guibg=#29334a
		SnacksPickerToggle({ SnacksProfilerBadgeInfo }), -- SnacksPickerToggle xxx links to SnacksProfilerBadgeInfo
		SnacksFooterDesc({ SnacksProfilerBadgeInfo }), -- SnacksFooterDesc xxx links to SnacksProfilerBadgeInfo
		SnacksPickerInputBorder({ fg = roxane, bg = black.darken(20) }), -- SnacksPickerInputBorder xxx guifg=#ff966c guibg=#1e2030
		SnacksNotifierError({ fg = "#c8d3f5", bg = "#222436" }), -- SnacksNotifierError xxx guifg=#c8d3f5 guibg=#222436
		SnacksNotifierTitleDebug({ fg = "#636da6" }), -- SnacksNotifierTitleDebug xxx guifg=#636da6
		sym("@constructor.tsx")({ fg = "#65bcff" }), -- @constructor.tsx xxx guifg=#65bcff
		RenderMarkdownH2Bg({ bg = "#38343d" }), -- RenderMarkdownH2Bg xxx guibg=#38343d
		RenderMarkdownDash({ fg = "#ff966c" }), -- RenderMarkdownDash xxx guifg=#ff966c
		WhichKeyDesc({ fg = "#c099ff" }), -- WhichKeyDesc   xxx guifg=#c099ff
		SnacksNotifierTitleError({ fg = "#c53b53" }), -- SnacksNotifierTitleError xxx guifg=#c53b53
		GrugFarResultsMatch({ fg = "#1b1d2b", bg = "#ff757f" }), -- GrugFarResultsMatch xxx guifg=#1b1d2b guibg=#ff757f
		MiniIconsOrange({ fg = "#ff966c" }), -- MiniIconsOrange xxx guifg=#ff966c
		WhichKeyIconOrange({ MiniIconsOrange }), -- WhichKeyIconOrange xxx links to MiniIconsOrange
		htmlH1({ fg = "#c099ff", gui = "bold" }), -- htmlH1         xxx cterm=bold gui=bold guifg=#c099ff
		NoiceCmdlineIconInput({ fg = "#ffc777" }), -- NoiceCmdlineIconInput xxx guifg=#ffc777
		NoiceCmdlinePopupBorderInput({ fg = "#ffc777" }), -- NoiceCmdlinePopupBorderInput xxx guifg=#ffc777
		NoiceCmdlineIconCmdline({ fg = roxaneless }),
		SnacksNotifierTitleWarn({ fg = "#ffc777" }), -- SnacksNotifierTitleWarn xxx guifg=#ffc777
		diffFile({ fg = "#82aaff" }), -- diffFile       xxx guifg=#82aaff
		diffNewFile({ fg = "#65bcff", bg = "#2a4556" }), -- diffNewFile    xxx guifg=#65bcff guibg=#2a4556
		healthWarning({ fg = "#ffc777" }), -- healthWarning  xxx guifg=#ffc777
		sym("@markup.heading.4.markdown")({ fg = "#4fd6be", gui = "bold", bg = "#273644" }), -- @markup.heading.4.markdown xxx cterm=bold gui=bold guifg=#4fd6be guibg=#273644
		GrugFarResultsLineColumn({ fg = "#545c7e" }), -- GrugFarResultsLineColumn xxx guifg=#545c7e
		WhichKeyGroup({ fg = "#82aaff" }), -- WhichKeyGroup  xxx guifg=#82aaff
		BlinkCmpKindCopilot({ fg = "#4fd6be" }), -- BlinkCmpKindCopilot xxx guifg=#4fd6be
		BlinkCmpSignatureHelp({ fg = "#c8d3f5", bg = "#1e2030" }), -- BlinkCmpSignatureHelp xxx guifg=#c8d3f5 guibg=#1e2030
		sym("@tag.tsx")({ fg = "#ff757f" }), -- @tag.tsx       xxx guifg=#ff757f
		MiniFilesTitleFocused({ fg = "#589ed7", gui = "bold", bg = "#1e2030" }), -- MiniFilesTitleFocused xxx cterm=bold gui=bold guifg=#589ed7 guibg=#1e2030
		SnacksNotifierIconInfo({ fg = "#0db9d7" }), -- SnacksNotifierIconInfo xxx guifg=#0db9d7
		MiniDepsTitleError({ fg = "#1b1d2b", bg = "#e26a75" }), -- MiniDepsTitleError xxx guifg=#1b1d2b guibg=#e26a75
		FlashLabel({ fg = "#c8d3f5", gui = "bold", bg = "#ff007c" }), -- FlashLabel     xxx cterm=bold gui=bold guifg=#c8d3f5 guibg=#ff007c
		BlinkCmpMenu({ fg = "#c8d3f5", bg = "#1e2030" }), -- BlinkCmpMenu   xxx guifg=#c8d3f5 guibg=#1e2030
		BlinkCmpKindTabNine({ fg = "#4fd6be" }), -- BlinkCmpKindTabNine xxx guifg=#4fd6be
		sym("@punctuation.bracket")({ fg = "#828bb8" }), -- @punctuation.bracket xxx guifg=#828bb8
		LspKindArray({ sym("@punctuation.bracket") }), -- LspKindArray   xxx links to @punctuation.bracket
		SnacksPickerIconArray({ sym("@punctuation.bracket") }), -- SnacksPickerIconArray xxx links to @punctuation.bracket
		TroubleIconArray({ sym("@punctuation.bracket") }), -- TroubleIconArray xxx links to @punctuation.bracket
		BlinkCmpDocBorder({ fg = "#589ed7", bg = "#1e2030" }), -- BlinkCmpDocBorder xxx guifg=#589ed7 guibg=#1e2030
		BlinkCmpLabelMatch({ fg = "#65bcff" }), -- BlinkCmpLabelMatch xxx guifg=#65bcff
		BlinkCmpDoc({ fg = "#c8d3f5", bg = "#1e2030" }), -- BlinkCmpDoc    xxx guifg=#c8d3f5 guibg=#1e2030
		sym("@variable.member")({ fg = "#4fd6be" }), -- @variable.member xxx guifg=#4fd6be
		LspKindKey({ sym("@variable.member") }), -- LspKindKey     xxx links to @variable.member
		LspKindField({ sym("@variable.member") }), -- LspKindField   xxx links to @variable.member
		SnacksPickerIconField({ sym("@variable.member") }), -- SnacksPickerIconField xxx links to @variable.member
		TroubleIconField({ sym("@variable.member") }), -- TroubleIconField xxx links to @variable.member
		MiniTablineModifiedCurrent({ fg = "#ffc777", bg = "#3b4261" }), -- MiniTablineModifiedCurrent xxx guifg=#ffc777 guibg=#3b4261
		MiniTablineHidden({ fg = "#737aa2", bg = "#1e2030" }), -- MiniTablineHidden xxx guifg=#737aa2 guibg=#1e2030
		MiniTablineFill({ bg = "#1b1d2b" }), -- MiniTablineFill xxx guibg=#1b1d2b
		MiniStarterHeader({ fg = "#82aaff" }), -- MiniStarterHeader xxx guifg=#82aaff
		MiniTestPass({ fg = "#c3e88d", gui = "bold" }), -- MiniTestPass   xxx cterm=bold gui=bold guifg=#c3e88d
		MiniStarterFooter({ fg = "#ffc777", gui = "italic" }), -- MiniStarterFooter xxx cterm=italic gui=italic guifg=#ffc777
		MiniStarterItem({ fg = "#c8d3f5", bg = "#222436" }), -- MiniStarterItem xxx guifg=#c8d3f5 guibg=#222436
		MiniStarterItemBullet({ fg = "#589ed7" }), -- MiniStarterItemBullet xxx guifg=#589ed7
		NeotestFocused({ fg = "#ffc777" }), -- NeotestFocused xxx guifg=#ffc777
		NeotestDir({ fg = "#82aaff" }), -- NeotestDir     xxx guifg=#82aaff
		NoiceCmdlineIconLua({ fg = "#65bcff" }), -- NoiceCmdlineIconLua xxx guifg=#65bcff
		SnacksPickerBoxTitle({ fg = "#ff966c", bg = "#1e2030" }), -- SnacksPickerBoxTitle xxx guifg=#ff966c guibg=#1e2030
		SnacksIndent6({ fg = "#fca7ea", gui = "nocombine" }), -- SnacksIndent6  xxx cterm=nocombine gui=nocombine guifg=#fca7ea
		MiniHipatternsFixme({ fg = "#1b1d2b", gui = "bold", bg = "#c53b53" }), -- MiniHipatternsFixme xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#c53b53
		SnacksIndent8({ fg = "#ff757f", gui = "nocombine" }), -- SnacksIndent8  xxx cterm=nocombine gui=nocombine guifg=#ff757f
		SnacksDashboardDesc({ fg = "#86e1fc" }), -- SnacksDashboardDesc xxx guifg=#86e1fc
		SnacksNotifierIconTrace({ fg = "#fca7ea" }), -- SnacksNotifierIconTrace xxx guifg=#fca7ea
		SnacksNotifierDebug({ fg = "#c8d3f5", bg = "#222436" }), -- SnacksNotifierDebug xxx guifg=#c8d3f5 guibg=#222436
		MiniStatuslineModeVisual({ fg = "#1b1d2b", gui = "bold", bg = "#c099ff" }), -- MiniStatuslineModeVisual xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#c099ff
		MiniTablineModifiedHidden({ fg = "#bd9664", bg = "#1e2030" }), -- MiniTablineModifiedHidden xxx guifg=#bd9664 guibg=#1e2030
		SnacksProfilerIconTrace({ fg = "#545c7e", bg = "#293047" }), -- SnacksProfilerIconTrace xxx guifg=#545c7e guibg=#293047
		MiniStatuslineFilename({ fg = "#828bb8", bg = "#2f334d" }), -- MiniStatuslineFilename xxx guifg=#828bb8 guibg=#2f334d
		MiniStatuslineModeCommand({ fg = "#1b1d2b", gui = "bold", bg = "#ffc777" }), -- MiniStatuslineModeCommand xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#ffc777
		MiniIconsGreen({ fg = "#c3e88d" }), -- MiniIconsGreen xxx guifg=#c3e88d
		WhichKeyIconGreen({ MiniIconsGreen }), -- WhichKeyIconGreen xxx links to MiniIconsGreen
		SnacksProfilerBadgeTrace({ fg = "#545c7e", bg = "#24283c" }), -- SnacksProfilerBadgeTrace xxx guifg=#545c7e guibg=#24283c
		SnacksProfilerIconInfo({ fg = "#65bcff", bg = "#365272" }), -- SnacksProfilerIconInfo xxx guifg=#65bcff guibg=#365272
		SnacksFooterKey({ SnacksProfilerIconInfo }), -- SnacksFooterKey xxx links to SnacksProfilerIconInfo
		SnacksIndent({ fg = "#3b4261", gui = "nocombine" }), -- SnacksIndent   xxx cterm=nocombine gui=nocombine guifg=#3b4261
		SnacksIndentBlank({ SnacksIndent }), -- SnacksIndentBlank xxx links to SnacksIndent
		debugPC({ bg = "#1e2030" }), -- debugPC        xxx guibg=#1e2030
		GrugFarHelpHeader({ fg = "#636da6" }), -- GrugFarHelpHeader xxx guifg=#636da6
		MiniIndentscopeSymbol({ fg = "#65bcff", gui = "nocombine" }), -- MiniIndentscopeSymbol xxx cterm=nocombine gui=nocombine guifg=#65bcff
		NeotestFile({ fg = "#4fd6be" }), -- NeotestFile    xxx guifg=#4fd6be
		MiniStarterInactive({ fg = "#636da6", gui = "italic" }), -- MiniStarterInactive xxx cterm=italic gui=italic guifg=#636da6
		NeotestPassed({ fg = "#c3e88d" }), -- NeotestPassed  xxx guifg=#c3e88d
		SnacksIndent1({ fg = "#82aaff", gui = "nocombine" }), -- SnacksIndent1  xxx cterm=nocombine gui=nocombine guifg=#82aaff
		sym("@markup.heading.8.markdown")({ fg = "#ff757f", gui = "bold", bg = "#382c3d" }), -- @markup.heading.8.markdown xxx cterm=bold gui=bold guifg=#ff757f guibg=#382c3d
		MiniIconsBlue({ fg = "#82aaff" }), -- MiniIconsBlue  xxx guifg=#82aaff
		WhichKeyIconBlue({ MiniIconsBlue }), -- WhichKeyIconBlue xxx links to MiniIconsBlue
		NeotestTest({ fg = "#828bb8" }), -- NeotestTest    xxx guifg=#828bb8
		SnacksNotifierBorderInfo({ fg = "#1a6076", bg = "#222436" }), -- SnacksNotifierBorderInfo xxx guifg=#1a6076 guibg=#222436
		MiniTrailspace({ bg = "#ff757f" }), -- MiniTrailspace xxx guibg=#ff757f
		NoiceCompletionItemKindDefault({ fg = "#828bb8" }), -- NoiceCompletionItemKindDefault xxx guifg=#828bb8
		MiniSurround({ fg = "#1b1d2b", bg = "#ff966c" }), -- MiniSurround   xxx guifg=#1b1d2b guibg=#ff966c
		TroubleNormal({ fg = "#c8d3f5", bg = "#1e2030" }), -- TroubleNormal  xxx guifg=#c8d3f5 guibg=#1e2030
		RenderMarkdownH6Fg({ fg = "#fca7ea", gui = "bold" }), -- RenderMarkdownH6Fg xxx cterm=bold gui=bold guifg=#fca7ea
		sym("@markup.heading.3.markdown")({ fg = "#c3e88d", gui = "bold", bg = "#32383f" }), -- @markup.heading.3.markdown xxx cterm=bold gui=bold guifg=#c3e88d guibg=#32383f
		healthError({ fg = "#c53b53" }), -- healthError    xxx guifg=#c53b53
		sym("@comment.hint")({ fg = "#4fd6be" }), -- @comment.hint  xxx guifg=#4fd6be
		GrugFarInputLabel({ fg = "#65bcff" }), -- GrugFarInputLabel xxx guifg=#65bcff
		GrugFarInputPlaceholder({ fg = "#545c7e" }), -- GrugFarInputPlaceholder xxx guifg=#545c7e
		GrugFarResultsChangeIndicator({ fg = "#7ca1f2" }), -- GrugFarResultsChangeIndicator xxx guifg=#7ca1f2
		MiniDiffSignChange({ fg = "#7ca1f2" }), -- MiniDiffSignChange xxx guifg=#7ca1f2
		MiniStatuslineModeOther({ fg = "#1b1d2b", gui = "bold", bg = "#4fd6be" }), -- MiniStatuslineModeOther xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#4fd6be
		diffAdded({ fg = "#b8db87", bg = "#2a4556" }), -- diffAdded      xxx guifg=#b8db87 guibg=#2a4556
		MiniDepsChangeAdded({ diffAdded }), -- MiniDepsChangeAdded xxx links to diffAdded
		diffRemoved({ fg = "#e26a75", bg = "#4b2a3d" }), -- diffRemoved    xxx guifg=#e26a75 guibg=#4b2a3d
		MiniDepsChangeRemoved({ diffRemoved }), -- MiniDepsChangeRemoved xxx links to diffRemoved
		SnacksInputTitle({ fg = roxane }), -- SnacksInputTitle xxx guifg=#ffc777
		SnacksInputPrompt({ SnacksInputTitle }), -- SnacksInputPrompt xxx links to SnacksInputTitle
		MiniTablineVisible({ fg = "#c8d3f5", bg = "#1e2030" }), -- MiniTablineVisible xxx guifg=#c8d3f5 guibg=#1e2030
		FlashBackdrop({ fg = "#545c7e" }), -- FlashBackdrop  xxx guifg=#545c7e
		MiniStatuslineFileinfo({ fg = "#828bb8", bg = "#3b4261" }), -- MiniStatuslineFileinfo xxx guifg=#828bb8 guibg=#3b4261
		RenderMarkdownBullet({ fg = "#ff966c" }), -- RenderMarkdownBullet xxx guifg=#ff966c
		SnacksNotifierBorderWarn({ fg = "#7a6550", bg = "#222436" }), -- SnacksNotifierBorderWarn xxx guifg=#7a6550 guibg=#222436
		diffChanged({ fg = "#7ca1f2", bg = "#252a3f" }), -- diffChanged    xxx guifg=#7ca1f2 guibg=#252a3f
		helpExample({ fg = "#636da6" }), -- helpExample    xxx guifg=#636da6
		SignColumnSB({ fg = "#3b4261", bg = "#1e2030" }), -- SignColumnSB   xxx guifg=#3b4261 guibg=#1e2030
		sym("@string.documentation")({ fg = "#ffc777" }), -- @string.documentation xxx guifg=#ffc777
		BlinkCmpKindDefault({ fg = "#828bb8" }), -- BlinkCmpKindDefault xxx guifg=#828bb8
		BlinkCmpKindSupermaven({ fg = "#4fd6be" }), -- BlinkCmpKindSupermaven xxx guifg=#4fd6be
		BlinkCmpLabel({ fg = "#c8d3f5" }), -- BlinkCmpLabel  xxx guifg=#c8d3f5
		BlinkCmpSignatureHelpBorder({ fg = "#589ed7", bg = "#1e2030" }), -- BlinkCmpSignatureHelpBorder xxx guifg=#589ed7 guibg=#1e2030
		MiniStatuslineModeInsert({ fg = "#1b1d2b", gui = "bold", bg = "#c3e88d" }), -- MiniStatuslineModeInsert xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#c3e88d
		MiniFilesFile({ fg = "#c8d3f5" }), -- MiniFilesFile  xxx guifg=#c8d3f5
		SnacksInputIcon({ fg = "#65bcff" }), -- SnacksInputIcon xxx guifg=#65bcff
		NeotestWinSelect({ fg = "#82aaff" }), -- NeotestWinSelect xxx guifg=#82aaff
		MiniHipatternsTodo({ fg = "#1b1d2b", gui = "bold", bg = "#0db9d7" }), -- MiniHipatternsTodo xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#0db9d7
		SnacksNotifierIconDebug({ fg = "#636da6" }), -- SnacksNotifierIconDebug xxx guifg=#636da6
		SnacksInputBorder({ fg = "#ffc777" }), -- SnacksInputBorder xxx guifg=#ffc777
		SnacksZenIcon({ fg = "#fca7ea" }), -- SnacksZenIcon  xxx guifg=#fca7ea
		SnacksDashboardIcon({ fg = "#65bcff" }), -- SnacksDashboardIcon xxx guifg=#65bcff
		SnacksNotifierBorderTrace({ fg = "#79587e", bg = "#222436" }), -- SnacksNotifierBorderTrace xxx guifg=#79587e guibg=#222436
		SnacksDashboardKey({ fg = "#ff966c" }), -- SnacksDashboardKey xxx guifg=#ff966c
		SnacksDashboardFooter({ fg = "#65bcff" }), -- SnacksDashboardFooter xxx guifg=#65bcff
		SnacksNotifierWarn({ fg = "#c8d3f5", bg = "#222436" }), -- SnacksNotifierWarn xxx guifg=#c8d3f5 guibg=#222436
		SnacksNotifierIconWarn({ fg = "#ffc777" }), -- SnacksNotifierIconWarn xxx guifg=#ffc777
		SnacksIndent2({ fg = "#ffc777", gui = "nocombine" }), -- SnacksIndent2  xxx cterm=nocombine gui=nocombine guifg=#ffc777
		SnacksGhDiffHeader({ fg = "#65bcff", bg = "#29334a" }), -- SnacksGhDiffHeader xxx guifg=#65bcff guibg=#29334a
		BlinkCmpKindCodeium({ fg = "#4fd6be" }), -- BlinkCmpKindCodeium xxx guifg=#4fd6be
		SnacksGhLabel({ fg = "#65bcff", gui = "bold" }), -- SnacksGhLabel  xxx cterm=bold gui=bold guifg=#65bcff
		diffLine({ fg = "#636da6" }), -- diffLine       xxx guifg=#636da6
		SnacksNotifierTitleInfo({ fg = "#0db9d7" }), -- SnacksNotifierTitleInfo xxx guifg=#0db9d7
		debugBreakpoint({ fg = "#0db9d7", bg = "#203346" }), -- debugBreakpoint xxx guifg=#0db9d7 guibg=#203346
		SnacksDashboardDir({ fg = "#545c7e" }), -- SnacksDashboardDir xxx guifg=#545c7e
		MiniJump2dSpotAhead({ fg = "#4fd6be", gui = "nocombine", bg = "#1e2030" }), -- MiniJump2dSpotAhead xxx cterm=nocombine gui=nocombine guifg=#4fd6be guibg=#1e2030
		MiniCursorword({ bg = "#3b4261" }), -- MiniCursorword xxx guibg=#3b4261
		MiniDiffSignAdd({ fg = "#b8db87" }), -- MiniDiffSignAdd xxx guifg=#b8db87
		sym("@lsp.typemod.typeAlias.defaultLibrary")({ fg = "#589ed7" }), -- @lsp.typemod.typeAlias.defaultLibrary xxx guifg=#589ed7
		sym("@markup.list.markdown")({ fg = "#ff966c", gui = "bold" }), -- @markup.list.markdown xxx cterm=bold gui=bold guifg=#ff966c
		sym("@tag.delimiter.tsx")({ fg = "#6582c3" }), -- @tag.delimiter.tsx xxx guifg=#6582c3
		SupermavenSuggestion({ fg = "#444a73" }), -- SupermavenSuggestion xxx guifg=#444a73
		sym("@punctuation.delimiter")({ fg = "#89ddff" }), -- @punctuation.delimiter xxx guifg=#89ddff
		MiniIconsCyan({ fg = "#4fd6be" }), -- MiniIconsCyan  xxx guifg=#4fd6be
		WhichKeyIconCyan({ MiniIconsCyan }), -- WhichKeyIconCyan xxx links to MiniIconsCyan
		sym("@tag.javascript")({ fg = "#ff757f" }), -- @tag.javascript xxx guifg=#ff757f
		sym("@markup.list.checked")({ fg = "#4fd6be" }), -- @markup.list.checked xxx guifg=#4fd6be
		NoiceCmdlinePopupBorderLua({ fg = roxaneless }), -- NoiceCmdlinePopupBorderLua xxx guifg=#65bcff
		NoiceCmdlinePopupBorder({ fg = roxaneless }), -- NoiceCmdlinePopupBorderLua xxx guifg=#65bcff
		BlinkCmpMenuBorder({ fg = "#589ed7", bg = "#1e2030" }), -- BlinkCmpMenuBorder xxx guifg=#589ed7 guibg=#1e2030
		TroubleText({ fg = "#828bb8" }), -- TroubleText    xxx guifg=#828bb8
		TroubleDiagnosticsMessage({ TroubleText }), -- TroubleDiagnosticsMessage xxx links to TroubleText
		MiniPickBorderText({ fg = "#4fd6be", bg = "#1e2030" }), -- MiniPickBorderText xxx guifg=#4fd6be guibg=#1e2030
		healthSuccess({ fg = "#4fd6be" }), -- healthSuccess  xxx guifg=#4fd6be
		sym("@markup.heading.2.markdown")({ fg = "#ffc777", gui = "bold", bg = "#38343d" }), -- @markup.heading.2.markdown xxx cterm=bold gui=bold guifg=#ffc777 guibg=#38343d
		sym("@markup.heading.1.markdown")({ fg = "#82aaff", gui = "bold", bg = "#2c314a" }), -- @markup.heading.1.markdown xxx cterm=bold gui=bold guifg=#82aaff guibg=#2c314a
		htmlH2({ fg = "#82aaff", gui = "bold" }), -- htmlH2         xxx cterm=bold gui=bold guifg=#82aaff
		LspInfoBorder({ fg = "#589ed7", bg = "#1e2030" }), -- LspInfoBorder  xxx guifg=#589ed7 guibg=#1e2030
		diffOldFile({ fg = "#65bcff", bg = "#4b2a3d" }), -- diffOldFile    xxx guifg=#65bcff guibg=#4b2a3d
		ComplHint({ fg = "#444a73" }), -- ComplHint      xxx guifg=#444a73
		sym("@markup.heading.6.markdown")({ fg = "#fca7ea", gui = "bold", bg = "#383148" }), -- @markup.heading.6.markdown xxx cterm=bold gui=bold guifg=#fca7ea guibg=#383148
		MiniIndentscopePrefix({ gui = "nocombine" }), -- MiniIndentscopePrefix xxx cterm=nocombine gui=nocombine
		qfLineNr({ fg = "#737aa2" }), -- qfLineNr       xxx guifg=#737aa2
		qfFileName({ fg = "#82aaff" }), -- qfFileName     xxx guifg=#82aaff
		MiniCursorwordCurrent({ bg = "#3b4261" }), -- MiniCursorwordCurrent xxx guibg=#3b4261
		Italic({ fg = "#c8d3f5", gui = "italic" }), -- Italic         xxx cterm=italic gui=italic guifg=#c8d3f5
		SnacksPickerGitScope({ Italic }), -- SnacksPickerGitScope xxx links to Italic
		SnacksPickerItalic({ Italic }), -- SnacksPickerItalic xxx links to Italic
		MiniTestEmphasis({ gui = "bold" }), -- MiniTestEmphasis xxx cterm=bold gui=bold
		TelescopeBorder({ fg = "#589ed7", bg = "#1e2030" }), -- TelescopeBorder xxx guifg=#589ed7 guibg=#1e2030
		TelescopeTitle({ TelescopeBorder }), -- TelescopeTitle xxx links to TelescopeBorder
		TelescopePreviewBorder({ TelescopeBorder }), -- TelescopePreviewBorder xxx links to TelescopeBorder
		TelescopeResultsBorder({ TelescopeBorder }), -- TelescopeResultsBorder xxx links to TelescopeBorder
		TelescopeNormal({ fg = "#c8d3f5", bg = "#1e2030" }), -- TelescopeNormal xxx guifg=#c8d3f5 guibg=#1e2030
		TelescopePreviewNormal({ TelescopeNormal }), -- TelescopePreviewNormal xxx links to TelescopeNormal
		TelescopeResultsNormal({ TelescopeNormal }), -- TelescopeResultsNormal xxx links to TelescopeNormal
		TelescopePromptNormal({ TelescopeNormal }), -- TelescopePromptNormal xxx links to TelescopeNormal
		TelescopePromptBorder({ fg = "#ff966c", bg = "#1e2030" }), -- TelescopePromptBorder xxx guifg=#ff966c guibg=#1e2030
		TelescopePromptTitle({ fg = "#ff966c", bg = "#1e2030" }), -- TelescopePromptTitle xxx guifg=#ff966c guibg=#1e2030
		TelescopeResultsComment({ fg = "#545c7e" }), -- TelescopeResultsComment xxx guifg=#545c7e
		MiniStarterItemPrefix({ fg = "#ffc777" }), -- MiniStarterItemPrefix xxx guifg=#ffc777
		sym("@comment.info")({ fg = "#0db9d7" }), -- @comment.info  xxx guifg=#0db9d7
		SnacksIndent4({ fg = "#4fd6be", gui = "nocombine" }), -- SnacksIndent4  xxx cterm=nocombine gui=nocombine guifg=#4fd6be
		SnacksPickerInputTitle({ fg = "#ff966c", bg = "#1e2030" }), -- SnacksPickerInputTitle xxx guifg=#ff966c guibg=#1e2030
		SnacksNotifierBorderError({ fg = "#632d42", bg = "#222436" }), -- SnacksNotifierBorderError xxx guifg=#632d42 guibg=#222436
		NoiceCmdlinePopupTitleInput({ fg = "#ffc777" }), -- NoiceCmdlinePopupTitleInput xxx guifg=#ffc777
		GrugFarResultsLineNo({ fg = "#545c7e" }), -- GrugFarResultsLineNo xxx guifg=#545c7e
		NeotestRunning({ fg = "#ffc777" }), -- NeotestRunning xxx guifg=#ffc777
		BlinkCmpGhostText({ fg = "#444a73" }), -- BlinkCmpGhostText xxx guifg=#444a73
		SnacksIndent5({ fg = "#c099ff", gui = "nocombine" }), -- SnacksIndent5  xxx cterm=nocombine gui=nocombine guifg=#c099ff
		DapStoppedLine({ bg = "#38343d" }), -- DapStoppedLine xxx guibg=#38343d
		SnacksIndent7({ fg = "#ff966c", gui = "nocombine" }), -- SnacksIndent7  xxx cterm=nocombine gui=nocombine guifg=#ff966c
		BlinkCmpLabelDeprecated({ fg = "#3b4261", gui = "strikethrough" }), -- BlinkCmpLabelDeprecated xxx cterm=strikethrough gui=strikethrough guifg=#3b4261
		SnacksNotifierInfo({ fg = "#c8d3f5", bg = "#222436" }), -- SnacksNotifierInfo xxx guifg=#c8d3f5 guibg=#222436
		MiniJump({ fg = "#ffffff", bg = "#ff007c" }), -- MiniJump       xxx guifg=#ffffff guibg=#ff007c
		MiniJump2dSpot({ fg = "#ff007c", gui = "bold,nocombine" }), -- MiniJump2dSpot xxx cterm=bold,nocombine gui=bold,nocombine guifg=#ff007c
		MiniJump2dSpotUnique({ fg = "#ff966c", gui = "bold,nocombine" }), -- MiniJump2dSpotUnique xxx cterm=bold,nocombine gui=bold,nocombine guifg=#ff966c
		GitSignsDelete({ fg = "#e26a75" }), -- GitSignsDelete xxx guifg=#e26a75
		GitSignsTopdelete({ GitSignsDelete }), -- GitSignsTopdelete xxx links to GitSignsDelete
		GitSignsDeleteNr({ GitSignsDelete }), -- GitSignsDeleteNr xxx links to GitSignsDelete
		GitSignsDeleteCul({ GitSignsDelete }), -- GitSignsDeleteCul xxx links to GitSignsDelete
		Foo({ fg = "#c8d3f5", bg = "#ff007c" }), -- Foo            xxx guifg=#c8d3f5 guibg=#ff007c
		NeotestAdapterName({ fg = "#fca7ea", gui = "bold" }), -- NeotestAdapterName xxx cterm=bold gui=bold guifg=#fca7ea
		NeotestFailed({ fg = "#ff757f" }), -- NeotestFailed  xxx guifg=#ff757f
		NeotestSkipped({ fg = "#82aaff" }), -- NeotestSkipped xxx guifg=#82aaff
		NeotestBorder({ fg = "#82aaff" }), -- NeotestBorder  xxx guifg=#82aaff
		LazyProgressDone({ fg = "#ff007c", gui = "bold" }), -- LazyProgressDone xxx cterm=bold gui=bold guifg=#ff007c
		MiniDepsTitleUpdate({ fg = "#1b1d2b", bg = "#b8db87" }), -- MiniDepsTitleUpdate xxx guifg=#1b1d2b guibg=#b8db87
		MiniIconsRed({ fg = "#ff757f" }), -- MiniIconsRed   xxx guifg=#ff757f
		WhichKeyIconRed({ MiniIconsRed }), -- WhichKeyIconRed xxx links to MiniIconsRed
		NeotestIndent({ fg = "#828bb8" }), -- NeotestIndent  xxx guifg=#828bb8
		NeotestMarked({ fg = "#82aaff" }), -- NeotestMarked  xxx guifg=#82aaff
		NeotestTarget({ fg = "#82aaff" }), -- NeotestTarget  xxx guifg=#82aaff
		MiniTablineModifiedVisible({ fg = "#ffc777", bg = "#1e2030" }), -- MiniTablineModifiedVisible xxx guifg=#ffc777 guibg=#1e2030
		sym("@keyword.function")({ fg = "#c099ff" }), -- @keyword.function xxx guifg=#c099ff
		GrugFarResultsStats({ fg = "#82aaff" }), -- GrugFarResultsStats xxx guifg=#82aaff
		sym("@punctuation.special.markdown")({ fg = "#ff966c" }), -- @punctuation.special.markdown xxx guifg=#ff966c
		SnacksPickerRule({ sym("@punctuation.special.markdown") }), -- SnacksPickerRule xxx links to @punctuation.special.markdown
		NoiceCmdlinePopupTitleLua({ fg = "#65bcff" }), -- NoiceCmdlinePopupTitleLua xxx guifg=#65bcff
		GrugFarResultsHeader({ fg = "#ff966c" }), -- GrugFarResultsHeader xxx guifg=#ff966c
		SnacksPickerPickWin({ fg = "#c8d3f5", gui = "bold", bg = "#3e68d7" }), -- SnacksPickerPickWin xxx cterm=bold gui=bold guifg=#c8d3f5 guibg=#3e68d7
		sym("@markup.emphasis")({ gui = "italic" }), -- @markup.emphasis xxx cterm=italic gui=italic
		GrugFarHelpHeaderKey({ fg = "#86e1fc" }), -- GrugFarHelpHeaderKey xxx guifg=#86e1fc
		sym("@markup.heading.7.markdown")({ fg = "#ff966c", gui = "bold", bg = "#382f3b" }), -- @markup.heading.7.markdown xxx cterm=bold gui=bold guifg=#ff966c guibg=#382f3b
		GitSignsChange({ fg = "#7ca1f2" }), -- GitSignsChange xxx guifg=#7ca1f2
		GitSignsChangedelete({ GitSignsChange }), -- GitSignsChangedelete xxx links to GitSignsChange
		GitSignsChangeNr({ GitSignsChange }), -- GitSignsChangeNr xxx links to GitSignsChange
		GitSignsChangeCul({ GitSignsChange }), -- GitSignsChangeCul xxx links to GitSignsChange
		NeotestExpandMarker({ fg = "#828bb8" }), -- NeotestExpandMarker xxx guifg=#828bb8
		MiniStarterQuery({ fg = "#0db9d7" }), -- MiniStarterQuery xxx guifg=#0db9d7
		MiniStarterSection({ fg = "#65bcff" }), -- MiniStarterSection xxx guifg=#65bcff
		MiniStarterCurrent({ gui = "nocombine" }), -- MiniStarterCurrent xxx cterm=nocombine gui=nocombine
		SnacksPickerPickWinCurrent({ fg = "#c8d3f5", gui = "bold", bg = "#ff007c" }), -- SnacksPickerPickWinCurrent xxx cterm=bold gui=bold guifg=#c8d3f5 guibg=#ff007c
		WhichKeyValue({ fg = "#737aa2" }), -- WhichKeyValue  xxx guifg=#737aa2
		WhichKeySeparator({ fg = "#636da6" }), -- WhichKeySeparator xxx guifg=#636da6
		helpCommand({ fg = "#82aaff", bg = "#444a73" }), -- helpCommand    xxx guifg=#82aaff guibg=#444a73
		MiniDiffSignDelete({ fg = "#e26a75" }), -- MiniDiffSignDelete xxx guifg=#e26a75
		SnacksNotifierBorderDebug({ fg = "#3c4163", bg = "#222436" }), -- SnacksNotifierBorderDebug xxx guifg=#3c4163 guibg=#222436
		MiniTablineCurrent({ fg = "#c8d3f5", bg = "#3b4261" }), -- MiniTablineCurrent xxx guifg=#c8d3f5 guibg=#3b4261
		GitSignsAdd({ fg = "#b8db87" }), -- GitSignsAdd    xxx guifg=#b8db87
		GitSignsUntracked({ GitSignsAdd }), -- GitSignsUntracked xxx links to GitSignsAdd
		GitSignsAddNr({ GitSignsAdd }), -- GitSignsAddNr  xxx links to GitSignsAdd
		GitSignsAddCul({ GitSignsAdd }), -- GitSignsAddCul xxx links to GitSignsAdd
		MiniCompletionActiveParameter({ gui = "underline" }), -- MiniCompletionActiveParameter xxx cterm=underline gui=underline
		MiniIconsPurple({ fg = "#fca7ea" }), -- MiniIconsPurple xxx guifg=#fca7ea
		WhichKeyIconPurple({ MiniIconsPurple }), -- WhichKeyIconPurple xxx links to MiniIconsPurple
		MiniIconsYellow({ fg = "#ffc777" }), -- MiniIconsYellow xxx guifg=#ffc777
		WhichKeyIconYellow({ MiniIconsYellow }), -- WhichKeyIconYellow xxx links to MiniIconsYellow
		MiniIconsAzure({ fg = "#0db9d7" }), -- MiniIconsAzure xxx guifg=#0db9d7
		WhichKeyIconAzure({ MiniIconsAzure }), -- WhichKeyIconAzure xxx links to MiniIconsAzure
		MiniIconsGrey({ fg = "#c8d3f5" }), -- MiniIconsGrey  xxx guifg=#c8d3f5
		WhichKeyIconGrey({ MiniIconsGrey }), -- WhichKeyIconGrey xxx links to MiniIconsGrey
		MiniStatuslineDevinfo({ fg = "#828bb8", bg = "#3b4261" }), -- MiniStatuslineDevinfo xxx guifg=#828bb8 guibg=#3b4261
		SnacksIndent3({ fg = "#c3e88d", gui = "nocombine" }), -- SnacksIndent3  xxx cterm=nocombine gui=nocombine guifg=#c3e88d
		LazyProgressTodo({ fg = "#3b4261", gui = "bold" }), -- LazyProgressTodo xxx cterm=bold gui=bold guifg=#3b4261
		MiniPickPrompt({ fg = "#0db9d7", bg = "#1e2030" }), -- MiniPickPrompt xxx guifg=#0db9d7 guibg=#1e2030
		Bold({ fg = "#c8d3f5", gui = "bold" }), -- Bold           xxx cterm=bold gui=bold guifg=#c8d3f5
		SnacksPickerBold({ Bold }), -- SnacksPickerBold xxx links to Bold
		RenderMarkdownH1Bg({ bg = "#2c314a" }), -- RenderMarkdownH1Bg xxx guibg=#2c314a
		RenderMarkdownTableHead({ fg = "#ff757f" }), -- RenderMarkdownTableHead xxx guifg=#ff757f
		RenderMarkdownH4Bg({ bg = "#273644" }), -- RenderMarkdownH4Bg xxx guibg=#273644
		RenderMarkdownH3Fg({ fg = "#c3e88d", gui = "bold" }), -- RenderMarkdownH3Fg xxx cterm=bold gui=bold guifg=#c3e88d
		MiniTestFail({ fg = "#ff757f", gui = "bold" }), -- MiniTestFail   xxx cterm=bold gui=bold guifg=#ff757f
		sym("@markup.list.unchecked")({ fg = "#82aaff" }), -- @markup.list.unchecked xxx guifg=#82aaff
		MiniAnimateCursor({ gui = "reverse,nocombine" }), -- MiniAnimateCursor xxx cterm=reverse,nocombine gui=reverse,nocombine
		RenderMarkdownH5Bg({ bg = "#32304a" }), -- RenderMarkdownH5Bg xxx guibg=#32304a
		TroubleCount({ fg = "#c099ff", bg = "#3b4261" }), -- TroubleCount   xxx guifg=#c099ff guibg=#3b4261
		TroubleFsCount({ TroubleCount }), -- TroubleFsCount xxx links to TroubleCount
		TroubleDiagnosticsCount({ TroubleCount }), -- TroubleDiagnosticsCount xxx links to TroubleCount
		TroubleFzfCount({ TroubleCount }), -- TroubleFzfCount xxx links to TroubleCount
		TroubleLspCount({ TroubleCount }), -- TroubleLspCount xxx links to TroubleCount
		TroubleQfCount({ TroubleCount }), -- TroubleQfCount xxx links to TroubleCount
		TroubleSnacksCount({ TroubleCount }), -- TroubleSnacksCount xxx links to TroubleCount
		TroubleTelescopeCount({ TroubleCount }), -- TroubleTelescopeCount xxx links to TroubleCount
		TroubleProfilerCount({ TroubleCount }), -- TroubleProfilerCount xxx links to TroubleCount
		RenderMarkdownH1Fg({ fg = "#82aaff", gui = "bold" }), -- RenderMarkdownH1Fg xxx cterm=bold gui=bold guifg=#82aaff
		MiniTablineTabpagesection({ bg = "#3b4261" }), -- MiniTablineTabpagesection xxx guibg=#3b4261
		WhichKey({ fg = fg }), -- WhichKey       xxx guifg=#86e1fc
		diffIndexLine({ fg = "#c099ff" }), -- diffIndexLine  xxx guifg=#c099ff
		MiniHipatternsHack({ fg = "#1b1d2b", gui = "bold", bg = "#ffc777" }), -- MiniHipatternsHack xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#ffc777
		MiniHipatternsNote({ fg = "#1b1d2b", gui = "bold", bg = "#4fd6be" }), -- MiniHipatternsNote xxx cterm=bold gui=bold guifg=#1b1d2b guibg=#4fd6be
		SnacksNotifierIconError({ fg = "#c53b53" }), -- SnacksNotifierIconError xxx guifg=#c53b53
		SnacksNotifierTitleTrace({ fg = "#fca7ea" }), -- SnacksNotifierTitleTrace xxx guifg=#fca7ea
		BufferLineIndicatorSelected({ fg = "#7ca1f2" }), -- BufferLineIndicatorSelected xxx guifg=#7ca1f2
		BufferLineBuffer({ fg = "#636da6", bg = "#191b28" }), -- BufferLineBuffer xxx guifg=#636da6 guibg=#191b28
		BufferLineInfo({ sp = "#0db9d7", fg = "#636da6", bg = "#191b28" }), -- BufferLineInfo xxx guifg=#636da6 guibg=#191b28 guisp=#0db9d7
		BufferLinePick({ fg = "#c53b53", gui = "bold,italic", bg = "#191b28" }), -- BufferLinePick xxx cterm=bold,italic gui=bold,italic guifg=#c53b53 guibg=#191b28
		BufferLineError({ sp = "#c53b53", fg = "#636da6", bg = "#191b28" }), -- BufferLineError xxx guifg=#636da6 guibg=#191b28 guisp=#c53b53
		BufferLineBackground({ fg = "#636da6", bg = "#191b28" }), -- BufferLineBackground xxx guifg=#636da6 guibg=#191b28
		BufferLineDiagnostic({ fg = "#4a517c", bg = "#191b28" }), -- BufferLineDiagnostic xxx guifg=#4a517c guibg=#191b28
		BufferLineWarning({ sp = "#ffc777", fg = "#636da6", bg = "#191b28" }), -- BufferLineWarning xxx guifg=#636da6 guibg=#191b28 guisp=#ffc777
		BufferLineOffsetSeparator({ fg = "#1b1d2b", bg = "#12131d" }), -- BufferLineOffsetSeparator xxx guifg=#1b1d2b guibg=#12131d
		BufferLinePickVisible({ fg = "#c53b53", gui = "bold,italic", bg = "#1f2131" }), -- BufferLinePickVisible xxx cterm=bold,italic gui=bold,italic guifg=#c53b53 guibg=#1f2131
		BufferLinePickSelected({ fg = "#c53b53", gui = "bold,italic", bg = "#222436" }), -- BufferLinePickSelected xxx cterm=bold,italic gui=bold,italic guifg=#c53b53 guibg=#222436
		BufferLineIndicatorVisible({ fg = "#1f2131", bg = "#1f2131" }), -- BufferLineIndicatorVisible xxx guifg=#1f2131 guibg=#1f2131
		BufferLineTabSeparatorSelected({ fg = "#12131d", bg = "#222436" }), -- BufferLineTabSeparatorSelected xxx guifg=#12131d guibg=#222436
		BufferLineTabSeparator({ fg = "#12131d", bg = "#191b28" }), -- BufferLineTabSeparator xxx guifg=#12131d guibg=#191b28
		BufferLineSeparatorVisible({ fg = "#12131d", bg = "#1f2131" }), -- BufferLineSeparatorVisible xxx guifg=#12131d guibg=#1f2131
		BufferLineSeparatorSelected({ fg = "#12131d", bg = "#222436" }), -- BufferLineSeparatorSelected xxx guifg=#12131d guibg=#222436
		BufferLineDuplicate({ fg = "#5e679d", gui = "italic", bg = "#191b28" }), -- BufferLineDuplicate xxx cterm=italic gui=italic guifg=#5e679d guibg=#191b28
		BufferLineDuplicateVisible({ fg = "#5e679d", gui = "italic", bg = "#1f2131" }), -- BufferLineDuplicateVisible xxx cterm=italic gui=italic guifg=#5e679d guibg=#1f2131
		BufferLineDuplicateSelected({ fg = "#5e679d", gui = "italic", bg = "#222436" }), -- BufferLineDuplicateSelected xxx cterm=italic gui=italic guifg=#5e679d guibg=#222436
		BufferLineModifiedSelected({ fg = "#c3e88d", bg = "#222436" }), -- BufferLineModifiedSelected xxx guifg=#c3e88d guibg=#222436
		BufferLineModifiedVisible({ fg = "#c3e88d", bg = "#1f2131" }), -- BufferLineModifiedVisible xxx guifg=#c3e88d guibg=#1f2131
		BufferLineModified({ fg = "#c3e88d", bg = "#191b28" }), -- BufferLineModified xxx guifg=#c3e88d guibg=#191b28
		BufferLineErrorDiagnosticVisible({ fg = "#4a517c", bg = "#1f2131" }), -- BufferLineErrorDiagnosticVisible xxx guifg=#4a517c guibg=#1f2131
		BufferLineErrorDiagnostic({ sp = "#932c3e", fg = "#4a517c", bg = "#191b28" }), -- BufferLineErrorDiagnostic xxx guifg=#4a517c guibg=#191b28 guisp=#932c3e
		BufferLineErrorSelected({ sp = "#c53b53", fg = "#c53b53", gui = "bold,italic", bg = "#222436" }), -- BufferLineErrorSelected xxx cterm=bold,italic gui=bold,italic guifg=#c53b53 guibg=#222436 guisp=#c53b53
		BufferLineErrorVisible({ fg = "#636da6", bg = "#1f2131" }), -- BufferLineErrorVisible xxx guifg=#636da6 guibg=#1f2131
		BufferLineWarningDiagnosticSelected({ sp = "#bf9559", fg = "#bf9559", gui = "bold,italic", bg = "#222436" }), -- BufferLineWarningDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#bf9559 guibg=#222436 guisp=#bf9559
		BufferLineWarningDiagnosticVisible({ fg = "#4a517c", bg = "#1f2131" }), -- BufferLineWarningDiagnosticVisible xxx guifg=#4a517c guibg=#1f2131
		BufferLineWarningDiagnostic({ sp = "#bf9559", fg = "#4a517c", bg = "#191b28" }), -- BufferLineWarningDiagnostic xxx guifg=#4a517c guibg=#191b28 guisp=#bf9559
		BufferLineWarningSelected({ sp = "#ffc777", fg = "#ffc777", gui = "bold,italic", bg = "#222436" }), -- BufferLineWarningSelected xxx cterm=bold,italic gui=bold,italic guifg=#ffc777 guibg=#222436 guisp=#ffc777
		BufferLineWarningVisible({ fg = "#636da6", bg = "#1f2131" }), -- BufferLineWarningVisible xxx guifg=#636da6 guibg=#1f2131
		BufferLineInfoDiagnosticSelected({ sp = "#098aa1", fg = "#098aa1", gui = "bold,italic", bg = "#222436" }), -- BufferLineInfoDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#098aa1 guibg=#222436 guisp=#098aa1
		BufferLineInfoDiagnosticVisible({ fg = "#4a517c", bg = "#1f2131" }), -- BufferLineInfoDiagnosticVisible xxx guifg=#4a517c guibg=#1f2131
		BufferLineInfoDiagnostic({ sp = "#098aa1", fg = "#4a517c", bg = "#191b28" }), -- BufferLineInfoDiagnostic xxx guifg=#4a517c guibg=#191b28 guisp=#098aa1
		BufferLineInfoSelected({ sp = "#0db9d7", fg = "#0db9d7", gui = "bold,italic", bg = "#222436" }), -- BufferLineInfoSelected xxx cterm=bold,italic gui=bold,italic guifg=#0db9d7 guibg=#222436 guisp=#0db9d7
		BufferLineInfoVisible({ fg = "#636da6", bg = "#1f2131" }), -- BufferLineInfoVisible xxx guifg=#636da6 guibg=#1f2131
		BufferLineHintDiagnosticSelected({ sp = "#3ba08e", fg = "#3ba08e", gui = "bold,italic", bg = "#222436" }), -- BufferLineHintDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#3ba08e guibg=#222436 guisp=#3ba08e
		BufferLineHintDiagnosticVisible({ fg = "#4a517c", bg = "#1f2131" }), -- BufferLineHintDiagnosticVisible xxx guifg=#4a517c guibg=#1f2131
		BufferLineHintDiagnostic({ sp = "#3ba08e", fg = "#4a517c", bg = "#191b28" }), -- BufferLineHintDiagnostic xxx guifg=#4a517c guibg=#191b28 guisp=#3ba08e
		BufferLineHintSelected({ sp = "#4fd6be", fg = "#4fd6be", gui = "bold,italic", bg = "#222436" }), -- BufferLineHintSelected xxx cterm=bold,italic gui=bold,italic guifg=#4fd6be guibg=#222436 guisp=#4fd6be
		BufferLineHintVisible({ fg = "#636da6", bg = "#1f2131" }), -- BufferLineHintVisible xxx guifg=#636da6 guibg=#1f2131
		BufferLineDiagnosticSelected({ fg = "#969eb7", gui = "bold,italic", bg = "#222436" }), -- BufferLineDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#969eb7 guibg=#222436
		BufferLineDiagnosticVisible({ fg = "#4a517c", bg = "#1f2131" }), -- BufferLineDiagnosticVisible xxx guifg=#4a517c guibg=#1f2131
		BufferLineNumbersVisible({ fg = "#636da6", bg = "#1f2131" }), -- BufferLineNumbersVisible xxx guifg=#636da6 guibg=#1f2131
		BufferLineNumbersSelected({ fg = "#c8d3f5", gui = "bold,italic", bg = "#222436" }), -- BufferLineNumbersSelected xxx cterm=bold,italic gui=bold,italic guifg=#c8d3f5 guibg=#222436
		BufferLineNumbers({ fg = "#636da6", bg = "#191b28" }), -- BufferLineNumbers xxx guifg=#636da6 guibg=#191b28
		BufferLineBufferSelected({ fg = "#c8d3f5", gui = "bold,italic", bg = "#222436" }), -- BufferLineBufferSelected xxx cterm=bold,italic gui=bold,italic guifg=#c8d3f5 guibg=#222436
		BufferLineBufferVisible({ fg = "#636da6", bg = "#1f2131" }), -- BufferLineBufferVisible xxx guifg=#636da6 guibg=#1f2131
		BufferLineCloseButtonSelected({ fg = "#c8d3f5", bg = "#222436" }), -- BufferLineCloseButtonSelected xxx guifg=#c8d3f5 guibg=#222436
		BufferLineCloseButtonVisible({ fg = "#636da6", bg = "#1f2131" }), -- BufferLineCloseButtonVisible xxx guifg=#636da6 guibg=#1f2131
		BufferLineCloseButton({ fg = "#636da6", bg = "#191b28" }), -- BufferLineCloseButton xxx guifg=#636da6 guibg=#191b28
		BufferLineTabClose({ fg = "#636da6", bg = "#191b28" }), -- BufferLineTabClose xxx guifg=#636da6 guibg=#191b28
		BufferLineTabSelected({ fg = "#82aaff", bg = "#222436" }), -- BufferLineTabSelected xxx guifg=#82aaff guibg=#222436
		BufferLineGroupLabel({ fg = "#12131d", bg = "#636da6" }), -- BufferLineGroupLabel xxx guifg=#12131d guibg=#636da6
		BufferLineGroupSeparator({ fg = "#636da6", bg = "#12131d" }), -- BufferLineGroupSeparator xxx guifg=#636da6 guibg=#12131d
		BufferLineTruncMarker({ fg = "#636da6", bg = "#12131d" }), -- BufferLineTruncMarker xxx guifg=#636da6 guibg=#12131d
		BufferLineFill({ fg = "#636da6", bg = "#12131d" }), -- BufferLineFill xxx guifg=#636da6 guibg=#12131d
		BufferLineTab({ fg = "#636da6", bg = "#191b28" }), -- BufferLineTab  xxx guifg=#636da6 guibg=#191b28
		BufferLineSeparator({ fg = "#12131d", bg = "#191b28" }), -- BufferLineSeparator xxx guifg=#12131d guibg=#191b28
		BufferLineHint({ sp = "#4fd6be", fg = "#636da6", bg = "#191b28" }), -- BufferLineHint xxx guifg=#636da6 guibg=#191b28 guisp=#4fd6be
		BufferLineErrorDiagnosticSelected({ sp = "#932c3e", fg = "#932c3e", gui = "bold,italic", bg = "#222436" }), -- BufferLineErrorDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#932c3e guibg=#222436 guisp=#932c3e
		lualine_transparent({ fg = "#c8d3f5", gui = "nocombine", bg = "#222436" }), -- lualine_transparent xxx gui=nocombine guifg=#c8d3f5 guibg=#222436
		lualine_a_normal({ fg = "#1b1d2b", gui = "nocombine", bg = "#82aaff" }), -- lualine_a_normal xxx gui=nocombine guifg=#1b1d2b guibg=#82aaff
		lualine_b_normal({ fg = "#82aaff", gui = "nocombine", bg = "#3b4261" }), -- lualine_b_normal xxx gui=nocombine guifg=#82aaff guibg=#3b4261
		lualine_c_normal({ fg = "#828bb8", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_normal xxx gui=nocombine guifg=#828bb8 guibg=#1e2030
		lualine_b_visual({ fg = "#c099ff", gui = "nocombine", bg = "#3b4261" }), -- lualine_b_visual xxx gui=nocombine guifg=#c099ff guibg=#3b4261
		lualine_a_visual({ fg = "#1b1d2b", gui = "nocombine", bg = "#c099ff" }), -- lualine_a_visual xxx gui=nocombine guifg=#1b1d2b guibg=#c099ff
		lualine_b_replace({ fg = "#ff757f", gui = "nocombine", bg = "#3b4261" }), -- lualine_b_replace xxx gui=nocombine guifg=#ff757f guibg=#3b4261
		lualine_a_replace({ fg = "#1b1d2b", gui = "nocombine", bg = "#ff757f" }), -- lualine_a_replace xxx gui=nocombine guifg=#1b1d2b guibg=#ff757f
		lualine_b_insert({ fg = "#c3e88d", gui = "nocombine", bg = "#3b4261" }), -- lualine_b_insert xxx gui=nocombine guifg=#c3e88d guibg=#3b4261
		lualine_a_insert({ fg = "#1b1d2b", gui = "nocombine", bg = "#c3e88d" }), -- lualine_a_insert xxx gui=nocombine guifg=#1b1d2b guibg=#c3e88d
		lualine_a_inactive({ fg = "#82aaff", gui = "nocombine", bg = "#1e2030" }), -- lualine_a_inactive xxx gui=nocombine guifg=#82aaff guibg=#1e2030
		lualine_b_inactive({ fg = "#3b4261", gui = "bold,nocombine", bg = "#1e2030" }), -- lualine_b_inactive xxx gui=bold,nocombine guifg=#3b4261 guibg=#1e2030
		lualine_c_inactive({ fg = "#3b4261", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_inactive xxx gui=nocombine guifg=#3b4261 guibg=#1e2030
		lualine_b_terminal({ fg = "#4fd6be", gui = "nocombine", bg = "#3b4261" }), -- lualine_b_terminal xxx gui=nocombine guifg=#4fd6be guibg=#3b4261
		lualine_a_terminal({ fg = "#1b1d2b", gui = "nocombine", bg = "#4fd6be" }), -- lualine_a_terminal xxx gui=nocombine guifg=#1b1d2b guibg=#4fd6be
		lualine_b_command({ fg = "#ffc777", gui = "nocombine", bg = "#3b4261" }), -- lualine_b_command xxx gui=nocombine guifg=#ffc777 guibg=#3b4261
		lualine_a_command({ fg = "#1b1d2b", gui = "nocombine", bg = "#ffc777" }), -- lualine_a_command xxx gui=nocombine guifg=#1b1d2b guibg=#ffc777
		lualine_c_4_normal({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_4_normal xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_c_4_insert({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_4_insert xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_c_4_visual({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_4_visual xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_c_4_replace({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_4_replace xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_c_4_command({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_4_command xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_c_4_terminal({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_4_terminal xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_c_4_inactive({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_4_inactive xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_c_diagnostics_error_normal({ fg = "#c53b53", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_error_normal xxx gui=nocombine guifg=#c53b53 guibg=#1e2030
		lualine_c_diagnostics_error_insert({ fg = "#c53b53", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_error_insert xxx gui=nocombine guifg=#c53b53 guibg=#1e2030
		lualine_c_diagnostics_error_visual({ fg = "#c53b53", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_error_visual xxx gui=nocombine guifg=#c53b53 guibg=#1e2030
		lualine_c_diagnostics_error_replace({ fg = "#c53b53", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_error_replace xxx gui=nocombine guifg=#c53b53 guibg=#1e2030
		lualine_c_diagnostics_error_command({ fg = "#c53b53", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_error_command xxx gui=nocombine guifg=#c53b53 guibg=#1e2030
		lualine_c_diagnostics_error_terminal({ fg = "#c53b53", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_error_terminal xxx gui=nocombine guifg=#c53b53 guibg=#1e2030
		lualine_c_diagnostics_error_inactive({ fg = "#c53b53", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_error_inactive xxx gui=nocombine guifg=#c53b53 guibg=#1e2030
		lualine_c_diagnostics_warn_normal({ fg = "#ffc777", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_warn_normal xxx gui=nocombine guifg=#ffc777 guibg=#1e2030
		lualine_c_diagnostics_warn_insert({ fg = "#ffc777", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_warn_insert xxx gui=nocombine guifg=#ffc777 guibg=#1e2030
		lualine_c_diagnostics_warn_visual({ fg = "#ffc777", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_warn_visual xxx gui=nocombine guifg=#ffc777 guibg=#1e2030
		lualine_c_diagnostics_warn_replace({ fg = "#ffc777", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_warn_replace xxx gui=nocombine guifg=#ffc777 guibg=#1e2030
		lualine_c_diagnostics_warn_command({ fg = "#ffc777", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_warn_command xxx gui=nocombine guifg=#ffc777 guibg=#1e2030
		lualine_c_diagnostics_warn_terminal({ fg = "#ffc777", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_warn_terminal xxx gui=nocombine guifg=#ffc777 guibg=#1e2030
		lualine_c_diagnostics_warn_inactive({ fg = "#ffc777", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_warn_inactive xxx gui=nocombine guifg=#ffc777 guibg=#1e2030
		lualine_c_diagnostics_info_normal({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_info_normal xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_diagnostics_info_insert({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_info_insert xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_diagnostics_info_visual({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_info_visual xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_diagnostics_info_replace({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_info_replace xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_diagnostics_info_command({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_info_command xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_diagnostics_info_terminal({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_info_terminal xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_diagnostics_info_inactive({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_info_inactive xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_diagnostics_hint_normal({ fg = "#4fd6be", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_hint_normal xxx gui=nocombine guifg=#4fd6be guibg=#1e2030
		lualine_c_diagnostics_hint_insert({ fg = "#4fd6be", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_hint_insert xxx gui=nocombine guifg=#4fd6be guibg=#1e2030
		lualine_c_diagnostics_hint_visual({ fg = "#4fd6be", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_hint_visual xxx gui=nocombine guifg=#4fd6be guibg=#1e2030
		lualine_c_diagnostics_hint_replace({ fg = "#4fd6be", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_hint_replace xxx gui=nocombine guifg=#4fd6be guibg=#1e2030
		lualine_c_diagnostics_hint_command({ fg = "#4fd6be", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_hint_command xxx gui=nocombine guifg=#4fd6be guibg=#1e2030
		lualine_c_diagnostics_hint_terminal({ fg = "#4fd6be", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_hint_terminal xxx gui=nocombine guifg=#4fd6be guibg=#1e2030
		lualine_c_diagnostics_hint_inactive({ fg = "#4fd6be", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_diagnostics_hint_inactive xxx gui=nocombine guifg=#4fd6be guibg=#1e2030
		lualine_x_12_normal({ fg = "#c099ff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_12_normal xxx gui=nocombine guifg=#c099ff guibg=#1e2030
		lualine_x_12_insert({ fg = "#c099ff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_12_insert xxx gui=nocombine guifg=#c099ff guibg=#1e2030
		lualine_x_12_visual({ fg = "#c099ff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_12_visual xxx gui=nocombine guifg=#c099ff guibg=#1e2030
		lualine_x_12_replace({ fg = "#c099ff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_12_replace xxx gui=nocombine guifg=#c099ff guibg=#1e2030
		lualine_x_12_command({ fg = "#c099ff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_12_command xxx gui=nocombine guifg=#c099ff guibg=#1e2030
		lualine_x_12_terminal({ fg = "#c099ff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_12_terminal xxx gui=nocombine guifg=#c099ff guibg=#1e2030
		lualine_x_12_inactive({ fg = "#c099ff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_12_inactive xxx gui=nocombine guifg=#c099ff guibg=#1e2030
		lualine_x_13_normal({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_13_normal xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_13_insert({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_13_insert xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_13_visual({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_13_visual xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_13_replace({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_13_replace xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_13_command({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_13_command xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_13_terminal({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_13_terminal xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_13_inactive({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_13_inactive xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_14_normal({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_14_normal xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_14_insert({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_14_insert xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_14_visual({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_14_visual xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_14_replace({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_14_replace xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_14_command({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_14_command xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_14_terminal({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_14_terminal xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_14_inactive({ fg = "#ff966c", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_14_inactive xxx gui=nocombine guifg=#ff966c guibg=#1e2030
		lualine_x_15_normal({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_15_normal xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_x_15_insert({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_15_insert xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_x_15_visual({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_15_visual xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_x_15_replace({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_15_replace xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_x_15_command({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_15_command xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_x_15_terminal({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_15_terminal xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_x_15_inactive({ fg = "#65bcff", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_15_inactive xxx gui=nocombine guifg=#65bcff guibg=#1e2030
		lualine_x_diff_added_normal({ fg = "#b8db87", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_added_normal xxx gui=nocombine guifg=#b8db87 guibg=#1e2030
		lualine_x_diff_added_insert({ fg = "#b8db87", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_added_insert xxx gui=nocombine guifg=#b8db87 guibg=#1e2030
		lualine_x_diff_added_visual({ fg = "#b8db87", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_added_visual xxx gui=nocombine guifg=#b8db87 guibg=#1e2030
		lualine_x_diff_added_replace({ fg = "#b8db87", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_added_replace xxx gui=nocombine guifg=#b8db87 guibg=#1e2030
		lualine_x_diff_added_command({ fg = "#b8db87", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_added_command xxx gui=nocombine guifg=#b8db87 guibg=#1e2030
		lualine_x_diff_added_terminal({ fg = "#b8db87", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_added_terminal xxx gui=nocombine guifg=#b8db87 guibg=#1e2030
		lualine_x_diff_added_inactive({ fg = "#b8db87", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_added_inactive xxx gui=nocombine guifg=#b8db87 guibg=#1e2030
		lualine_x_diff_modified_normal({ fg = "#7ca1f2", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_modified_normal xxx gui=nocombine guifg=#7ca1f2 guibg=#1e2030
		lualine_x_diff_modified_insert({ fg = "#7ca1f2", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_modified_insert xxx gui=nocombine guifg=#7ca1f2 guibg=#1e2030
		lualine_x_diff_modified_visual({ fg = "#7ca1f2", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_modified_visual xxx gui=nocombine guifg=#7ca1f2 guibg=#1e2030
		lualine_x_diff_modified_replace({ fg = "#7ca1f2", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_modified_replace xxx gui=nocombine guifg=#7ca1f2 guibg=#1e2030
		lualine_x_diff_modified_command({ fg = "#7ca1f2", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_modified_command xxx gui=nocombine guifg=#7ca1f2 guibg=#1e2030
		lualine_x_diff_modified_terminal({ fg = "#7ca1f2", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_modified_terminal xxx gui=nocombine guifg=#7ca1f2 guibg=#1e2030
		lualine_x_diff_modified_inactive({ fg = "#7ca1f2", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_modified_inactive xxx gui=nocombine guifg=#7ca1f2 guibg=#1e2030
		lualine_x_diff_removed_normal({ fg = "#e26a75", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_removed_normal xxx gui=nocombine guifg=#e26a75 guibg=#1e2030
		lualine_x_diff_removed_insert({ fg = "#e26a75", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_removed_insert xxx gui=nocombine guifg=#e26a75 guibg=#1e2030
		lualine_x_diff_removed_visual({ fg = "#e26a75", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_removed_visual xxx gui=nocombine guifg=#e26a75 guibg=#1e2030
		lualine_x_diff_removed_replace({ fg = "#e26a75", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_removed_replace xxx gui=nocombine guifg=#e26a75 guibg=#1e2030
		lualine_x_diff_removed_command({ fg = "#e26a75", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_removed_command xxx gui=nocombine guifg=#e26a75 guibg=#1e2030
		lualine_x_diff_removed_terminal({ fg = "#e26a75", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_removed_terminal xxx gui=nocombine guifg=#e26a75 guibg=#1e2030
		lualine_x_diff_removed_inactive({ fg = "#e26a75", gui = "nocombine", bg = "#1e2030" }), -- lualine_x_diff_removed_inactive xxx gui=nocombine guifg=#e26a75 guibg=#1e2030
		NoiceFormatProgressDone({ fg = "#c8d3f5", bg = "#3e68d7" }), -- NoiceFormatProgressDone xxx guifg=#c8d3f5 guibg=#3e68d7
		NoiceHiddenCursor({ gui = "nocombine", blend = 100 }), -- NoiceHiddenCursor xxx cterm=nocombine gui=nocombine blend=100
		SnacksBackdrop({ bg = "#000000" }), -- SnacksBackdrop xxx guibg=#000000
		lualine_transitional_lualine_a_normal_to_lualine_b_normal({ fg = "#82aaff", gui = "nocombine", bg = "#3b4261" }), -- lualine_transitional_lualine_a_normal_to_lualine_b_normal xxx gui=nocombine guifg=#82aaff guibg=#3b4261
		lualine_transitional_lualine_b_normal_to_lualine_c_normal({ fg = "#3b4261", gui = "nocombine", bg = "#1e2030" }), -- lualine_transitional_lualine_b_normal_to_lualine_c_normal xxx gui=nocombine guifg=#3b4261 guibg=#1e2030
		lualine_transitional_lualine_b_normal_to_lualine_x_15_normal({
			fg = "#3b4261",
			gui = "nocombine",
			bg = "#1e2030",
		}), -- lualine_transitional_lualine_b_normal_to_lualine_x_15_normal xxx gui=nocombine guifg=#3b4261 guibg=#1e2030
		TodoBgNOTE({ fg = "#222436", gui = "bold", bg = "#4fd6be" }), -- TodoBgNOTE     xxx gui=bold guifg=#222436 guibg=#4fd6be
		TodoFgNOTE({ fg = "#4fd6be" }), -- TodoFgNOTE     xxx guifg=#4fd6be
		TodoSignNOTE({ fg = "#4fd6be", bg = "#222436" }), -- TodoSignNOTE   xxx guifg=#4fd6be guibg=#222436
		TodoBgPERF({ fg = "#222436", gui = "bold", bg = "#c099ff" }), -- TodoBgPERF     xxx gui=bold guifg=#222436 guibg=#c099ff
		TodoFgPERF({ fg = "#c099ff" }), -- TodoFgPERF     xxx guifg=#c099ff
		TodoSignPERF({ fg = "#c099ff", bg = "#222436" }), -- TodoSignPERF   xxx guifg=#c099ff guibg=#222436
		TodoBgWARN({ fg = "#222436", gui = "bold", bg = "#ffc777" }), -- TodoBgWARN     xxx gui=bold guifg=#222436 guibg=#ffc777
		TodoFgWARN({ fg = "#ffc777" }), -- TodoFgWARN     xxx guifg=#ffc777
		TodoSignWARN({ fg = "#ffc777", bg = "#222436" }), -- TodoSignWARN   xxx guifg=#ffc777 guibg=#222436
		TodoBgTEST({ fg = "#222436", gui = "bold", bg = "#c099ff" }), -- TodoBgTEST     xxx gui=bold guifg=#222436 guibg=#c099ff
		TodoFgTEST({ fg = "#c099ff" }), -- TodoFgTEST     xxx guifg=#c099ff
		TodoSignTEST({ fg = "#c099ff", bg = "#222436" }), -- TodoSignTEST   xxx guifg=#c099ff guibg=#222436
		TodoBgFIX({ fg = "#c8d3f5", gui = "bold", bg = "#c53b53" }), -- TodoBgFIX      xxx gui=bold guifg=#c8d3f5 guibg=#c53b53
		TodoFgFIX({ fg = "#c53b53" }), -- TodoFgFIX      xxx guifg=#c53b53
		TodoSignFIX({ fg = "#c53b53", bg = "#222436" }), -- TodoSignFIX    xxx guifg=#c53b53 guibg=#222436
		TodoBgTODO({ fg = "#222436", gui = "bold", bg = "#0db9d7" }), -- TodoBgTODO     xxx gui=bold guifg=#222436 guibg=#0db9d7
		TodoFgTODO({ fg = "#0db9d7" }), -- TodoFgTODO     xxx guifg=#0db9d7
		TodoSignTODO({ fg = "#0db9d7", bg = "#222436" }), -- TodoSignTODO   xxx guifg=#0db9d7 guibg=#222436
		TodoBgHACK({ fg = "#222436", gui = "bold", bg = "#ffc777" }), -- TodoBgHACK     xxx gui=bold guifg=#222436 guibg=#ffc777
		TodoFgHACK({ fg = "#ffc777" }), -- TodoFgHACK     xxx guifg=#ffc777
		TodoSignHACK({ fg = "#ffc777", bg = "#222436" }), -- TodoSignHACK   xxx guifg=#ffc777 guibg=#222436
		GitSignsStagedAdd({ fg = "#5c6d43" }), -- GitSignsStagedAdd xxx guifg=#5c6d43
		GitSignsStagedChange({ fg = "#3e5079" }), -- GitSignsStagedChange xxx guifg=#3e5079
		GitSignsStagedDelete({ fg = "#71353a" }), -- GitSignsStagedDelete xxx guifg=#71353a
		GitSignsStagedChangedelete({ fg = "#3e5079" }), -- GitSignsStagedChangedelete xxx guifg=#3e5079
		GitSignsStagedTopdelete({ fg = "#71353a" }), -- GitSignsStagedTopdelete xxx guifg=#71353a
		GitSignsStagedUntracked({ fg = "#5c6d43" }), -- GitSignsStagedUntracked xxx guifg=#5c6d43
		GitSignsStagedAddNr({ fg = "#5c6d43" }), -- GitSignsStagedAddNr xxx guifg=#5c6d43
		GitSignsStagedChangeNr({ fg = "#3e5079" }), -- GitSignsStagedChangeNr xxx guifg=#3e5079
		GitSignsStagedDeleteNr({ fg = "#71353a" }), -- GitSignsStagedDeleteNr xxx guifg=#71353a
		GitSignsStagedChangedeleteNr({ fg = "#3e5079" }), -- GitSignsStagedChangedeleteNr xxx guifg=#3e5079
		GitSignsStagedTopdeleteNr({ fg = "#71353a" }), -- GitSignsStagedTopdeleteNr xxx guifg=#71353a
		GitSignsStagedUntrackedNr({ fg = "#5c6d43" }), -- GitSignsStagedUntrackedNr xxx guifg=#5c6d43
		GitSignsStagedAddLn({ bg = "#2a4556" }), -- GitSignsStagedAddLn xxx guibg=#2a4556
		GitSignsStagedChangeLn({ bg = "#252a3f" }), -- GitSignsStagedChangeLn xxx guibg=#252a3f
		GitSignsStagedChangedeleteLn({ bg = "#252a3f" }), -- GitSignsStagedChangedeleteLn xxx guibg=#252a3f
		GitSignsStagedUntrackedLn({ bg = "#2a4556" }), -- GitSignsStagedUntrackedLn xxx guibg=#2a4556
		GitSignsStagedAddCul({ fg = "#5c6d43" }), -- GitSignsStagedAddCul xxx guifg=#5c6d43
		GitSignsStagedChangeCul({ fg = "#3e5079" }), -- GitSignsStagedChangeCul xxx guifg=#3e5079
		GitSignsStagedDeleteCul({ fg = "#71353a" }), -- GitSignsStagedDeleteCul xxx guifg=#71353a
		GitSignsStagedChangedeleteCul({ fg = "#3e5079" }), -- GitSignsStagedChangedeleteCul xxx guifg=#3e5079
		GitSignsStagedTopdeleteCul({ fg = "#71353a" }), -- GitSignsStagedTopdeleteCul xxx guifg=#71353a
		GitSignsStagedUntrackedCul({ fg = "#5c6d43" }), -- GitSignsStagedUntrackedCul xxx guifg=#5c6d43
		BufferLineMiniIconsAzureSelected({ fg = "#0db9d7", bg = "#222436" }), -- BufferLineMiniIconsAzureSelected xxx guifg=#0db9d7 guibg=#222436
		lualine_c_filetype_MiniIconsAzure_normal({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_filetype_MiniIconsAzure_normal xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_filetype_MiniIconsAzure_insert({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_filetype_MiniIconsAzure_insert xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_filetype_MiniIconsAzure_visual({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_filetype_MiniIconsAzure_visual xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_filetype_MiniIconsAzure_replace({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_filetype_MiniIconsAzure_replace xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_filetype_MiniIconsAzure_command({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_filetype_MiniIconsAzure_command xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_filetype_MiniIconsAzure_terminal({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_filetype_MiniIconsAzure_terminal xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_filetype_MiniIconsAzure_inactive({ fg = "#0db9d7", gui = "nocombine", bg = "#1e2030" }), -- lualine_c_filetype_MiniIconsAzure_inactive xxx gui=nocombine guifg=#0db9d7 guibg=#1e2030
		lualine_c_7_LV_Bold_normal({ fg = "#c8d3f5", gui = "bold,nocombine", bg = "#1e2030" }), -- lualine_c_7_LV_Bold_normal xxx gui=bold,nocombine guifg=#c8d3f5 guibg=#1e2030
		lualine_c_7_LV_Bold_insert({ fg = "#c8d3f5", gui = "bold,nocombine", bg = "#1e2030" }), -- lualine_c_7_LV_Bold_insert xxx gui=bold,nocombine guifg=#c8d3f5 guibg=#1e2030
		lualine_c_7_LV_Bold_visual({ fg = "#c8d3f5", gui = "bold,nocombine", bg = "#1e2030" }), -- lualine_c_7_LV_Bold_visual xxx gui=bold,nocombine guifg=#c8d3f5 guibg=#1e2030
		lualine_c_7_LV_Bold_replace({ fg = "#c8d3f5", gui = "bold,nocombine", bg = "#1e2030" }), -- lualine_c_7_LV_Bold_replace xxx gui=bold,nocombine guifg=#c8d3f5 guibg=#1e2030
		lualine_c_7_LV_Bold_command({ fg = "#c8d3f5", gui = "bold,nocombine", bg = "#1e2030" }), -- lualine_c_7_LV_Bold_command xxx gui=bold,nocombine guifg=#c8d3f5 guibg=#1e2030
		lualine_c_7_LV_Bold_terminal({ fg = "#c8d3f5", gui = "bold,nocombine", bg = "#1e2030" }), -- lualine_c_7_LV_Bold_terminal xxx gui=bold,nocombine guifg=#c8d3f5 guibg=#1e2030
		lualine_c_7_LV_Bold_inactive({ fg = "#c8d3f5", gui = "bold,nocombine", bg = "#1e2030" }), -- lualine_c_7_LV_Bold_inactive xxx gui=bold,nocombine guifg=#c8d3f5 guibg=#1e2030
		lualine_transitional_lualine_b_normal_to_lualine_c_filetype_MiniIconsAzure_normal({
			fg = "#3b4261",
			gui = "nocombine",
			bg = "#1e2030",
		}), -- lualine_transitional_lualine_b_normal_to_lualine_c_filetype_MiniIconsAzure_normal xxx gui=nocombine guifg=#3b4261 guibg=#1e2030
		lualine_transitional_lualine_a_insert_to_lualine_b_insert({ fg = "#c3e88d", gui = "nocombine", bg = "#3b4261" }), -- lualine_transitional_lualine_a_insert_to_lualine_b_insert xxx gui=nocombine guifg=#c3e88d guibg=#3b4261
		lualine_transitional_lualine_b_insert_to_lualine_c_normal({ fg = "#3b4261", gui = "nocombine", bg = "#1e2030" }), -- lualine_transitional_lualine_b_insert_to_lualine_c_normal xxx gui=nocombine guifg=#3b4261 guibg=#1e2030
		lualine_transitional_lualine_b_insert_to_lualine_x_15_insert({
			fg = "#3b4261",
			gui = "nocombine",
			bg = "#1e2030",
		}), -- lualine_transitional_lualine_b_insert_to_lualine_x_15_insert xxx gui=nocombine guifg=#3b4261 guibg=#1e2030
		BufferLineMiniIconsAzure({ fg = "#0db9d7", bg = "#191b28" }), -- BufferLineMiniIconsAzure xxx guifg=#0db9d7 guibg=#191b28
		BufferLineMiniIconsAzureInactive({ fg = "#0db9d7", bg = "#1f2131" }), -- BufferLineMiniIconsAzureInactive xxx guifg=#0db9d7 guibg=#1f2131
		lualine_transitional_lualine_a_command_to_lualine_b_command({
			fg = "#ffc777",
			gui = "nocombine",
			bg = "#3b4261",
		}), -- lualine_transitional_lualine_a_command_to_lualine_b_command xxx gui=nocombine guifg=#ffc777 guibg=#3b4261
		lualine_transitional_lualine_b_command_to_lualine_c_filetype_MiniIconsAzure_command({
			fg = "#3b4261",
			gui = "nocombine",
			bg = "#1e2030",
		}), -- lualine_transitional_lualine_b_command_to_lualine_c_filetype_MiniIconsAzure_command xxx gui=nocombine guifg=#3b4261 guibg=#1e2030
		lualine_transitional_lualine_b_command_to_lualine_x_15_command({
			fg = "#3b4261",
			gui = "nocombine",
			bg = "#1e2030",
		}), -- lualine_transitional_lualine_b_command_to_lualine_x_15_command xxx gui=nocombine guifg=#3b4261 guibg=#1e2030
		BlinkCmpCursorLineMenuHack({ bg = "#363c58" }), -- BlinkCmpCursorLineMenuHack xxx guibg=#363c58
	}
end)
return theme
