---@alias SyntaxType
--- | 'NONE'
--- | 'error'
--- | 'warning'
--- | 'info'
--- | 'declarative'
--- | 'text'
--- | 'func'
--- | 'property'
--- | 'primitive'
--- | 'type'
--- | 'digit'
--- | 'parameter'
--- | 'comment'
--- | 'variable'
--- | 'instanceReference'
--- | 'logical'
--- | 'operator'
--- | 'background'
--- | 'panelBackground'
--- | 'typeparam'
---@alias Palette { inlay_hint: InlayHintPalette, git: GitPalette, name: string, text: string, declarative: string, func: string, digit: string, primitive: string, property: string, operator: string, variable: string, logical: string, parameter: string, instanceReference: string, type: string, comment: string, typeparam: string, panelBackground: string, background: string }
---@alias ThemeName 'light' | 'light_bold' | 'light_italic' | 'light_italic_bold' | 'dark' | 'dark_bold' | 'dark_italic' | 'dark_italic_bold'
---@alias Theme table<ThemeName, Palette>
---@alias Selector fun(palette: Palette, as: SyntaxType): TokenStyle
---@alias Import fun(self, h: StaticImporter): HighlightRegistrationWithFunction
---@alias StaticImporter fun(h: HighlightRegistrationWithFunction)
---@alias MapProc fun(self, syntax: SyntaxType, group: string | string[], selector?: Selector): HighlightRegistrationWithFunction
---@alias HighlightCreator fun(self, palette: Palette): table<string, TokenStyle>
---@alias HighlightRegistartion table<SyntaxType, { group: string, selector?: Selector }[]>
---@alias HighlightRegistrationWithFunction { map_token: MapProc, map_ui: MapProc, with: Import, highlight_groups: HighlightCreator }
---@alias GitPalette { diffAdded: string, diffDeleted: string, diffModified: string, stagedAdded: string, ignored: string, renamed: string, stagedDeleted: string, stagedModified: string, untracked: string }
---@alias TokenStyle vim.api.keyset.highlight
---@alias InlayHintPalette { fg: string, bg: string }
