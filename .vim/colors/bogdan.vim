" Vim color file - bogdan
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "bogdan"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi Typedef -- no settings --
"hi Title -- no settings --
"hi PreCondit -- no settings --
"hi Include -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi NonText -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
"hi PMenuSbar -- no settings --
"hi Identifier -- no settings --
"hi StorageClass -- no settings --
hi Normal guifg=#23d9d0 guibg=#0f0f0f guisp=#0f0f0f gui=NONE ctermfg=44 ctermbg=233 cterm=NONE
"hi Label -- no settings --
"hi CTagsImport -- no settings --
"hi Search -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Character -- no settings --
"hi Float -- no settings --
"hi Boolean -- no settings --
"hi Operator -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi Define -- no settings --
"hi Function -- no settings --
"hi EnumerationName -- no settings --
"hi Visual -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi VertSplit -- no settings --
"hi Exception -- no settings --
"hi Keyword -- no settings --
"hi DiffChange -- no settings --
"hi Cursor -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no settings --
"hi Constant -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi Structure -- no settings --
"hi Macro -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi ColorColumn ctermbg=lightgrey guibg=lightgrey
hi SpecialComment guifg=#dd88ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi Folded guifg=#b0d0e0 guibg=#305060 guisp=#305060 gui=NONE ctermfg=152 ctermbg=23 cterm=NONE
hi StatusLineNC guifg=#51a8d6 guibg=#4b2675 guisp=#4b2675 gui=NONE ctermfg=74 ctermbg=54 cterm=NONE
hi Debug guifg=#dd88ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#dd88ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi Conditional guifg=#90ee90 guibg=#0f0f0f guisp=#0f0f0f gui=NONE ctermfg=120 ctermbg=233 cterm=NONE
hi Todo guifg=#00ffff guibg=#507080 guisp=#507080 gui=underline ctermfg=14 ctermbg=66 cterm=underline
hi Special guifg=#dd88ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi LineNr guifg=#ac30ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#51a8d6 guibg=#4b2675 guisp=#4b2675 gui=NONE ctermfg=74 ctermbg=54 cterm=NONE
hi PMenuSel guifg=#ffffff guibg=#d422ce guisp=#d422ce gui=NONE ctermfg=15 ctermbg=164 cterm=NONE
hi Delimiter guifg=#dd88ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi Statement guifg=#ac30ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Comment guifg=#f703ef guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi Number guifg=#1111eb guibg=NONE guisp=NONE gui=NONE ctermfg=20 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#b0d0e0 guibg=#305060 guisp=#305060 gui=NONE ctermfg=152 ctermbg=23 cterm=NONE
hi PreProc guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi Type guifg=#ac30ff guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi PMenu guifg=#b9b9b9 guibg=#4b2675 guisp=#4b2675 gui=NONE ctermfg=250 ctermbg=54 cterm=NONE
hi SpecialKey guifg=#2e8b57 guibg=NONE guisp=NONE gui=NONE ctermfg=29 ctermbg=NONE cterm=NONE
hi Tag guifg=#dd88ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi String guifg=#4f3ed1 guibg=NONE guisp=NONE gui=NONE ctermfg=62 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#d3cadb guibg=#11387a guisp=#11387a gui=NONE ctermfg=253 ctermbg=6 cterm=NONE
hi Repeat guifg=#4eee94 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Underlined guifg=#c1cdc1 guibg=NONE guisp=NONE gui=underline ctermfg=151 ctermbg=NONE cterm=underline
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
