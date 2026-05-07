vim.g.colors_name = "t16"
vim.opt.background = "dark"
vim.opt.termguicolors = false
vim.cmd("highlight clear")

local palette = {
  black = 0,
  red = 1,
  green = 2,
  yellow = 3,
  blue = 4,
  magenta = 5,
  cyan = 6,
  white = 7,
  bright_black = 8,
  bright_red = 9,
  bright_green = 10,
  bright_yellow = 11,
  bright_blue = 12,
  bright_magenta = 13,
  bright_cyan = 14,
  bright_white = 15,
}

---@param name string
---@param val vim.api.keyset.highlight
local function hl(name, val)
  vim.api.nvim_set_hl(0, name, val)
end

-- :help highlight-groups
hl("LineNr", { ctermfg = palette.white })
hl("NonText", { ctermfg = palette.bright_black })

-- :help group-name
hl("Comment", { ctermfg = palette.bright_black })

hl("Constant", { ctermfg = palette.white })
hl("String", { ctermfg = palette.white })
hl("Character", { ctermfg = palette.white })
hl("Number", { ctermfg = palette.magenta })
hl("Boolean", { ctermfg = palette.magenta })
hl("Float", { ctermfg = palette.magenta })

hl("Identifier", { ctermfg = palette.white })
hl("Function", { ctermfg = palette.bright_blue })

hl("Statement", { ctermfg = palette.bright_white })
hl("Conditional", { ctermfg = palette.bright_white })
hl("Repeat", { ctermfg = palette.bright_white })
hl("Label", { ctermfg = palette.bright_white })
hl("Operator", { ctermfg = palette.bright_white })
hl("Keyword", { ctermfg = palette.bright_white })
hl("Exception", { ctermfg = palette.bright_white })

hl("PreProc", { ctermfg = palette.white })
hl("Include", { ctermfg = palette.white })
hl("Define", { ctermfg = palette.white })
hl("Macro", { ctermfg = palette.white })
hl("PreCondit", { ctermfg = palette.white })

hl("Type", { ctermfg = palette.green })
hl("StorageClass", { ctermfg = palette.green })
hl("Structure", { ctermfg = palette.green })
hl("TypeDef", { ctermfg = palette.green })

hl("Special", { ctermfg = palette.cyan })
hl("SpecialChar", { ctermfg = palette.cyan })
hl("Tag", { ctermfg = palette.cyan })
hl("Delimiter", { ctermfg = palette.bright_white })
hl("SpecialComment", { ctermfg = palette.cyan })
hl("Debug", { ctermfg = palette.cyan })

hl("Underlined", { ctermfg = palette.white, underline = true })

hl("Error", { ctermfg = palette.bright_red })

hl("Todo", { ctermfg = palette.bright_white })

hl("Added", { ctermfg = palette.green })
hl("Changed", { ctermfg = palette.yellow })
hl("Removed", { ctermfg = palette.red })

-- :help treesitter-highlight-groups
-- Identifiers
hl("@variable", { ctermfg = palette.white })
hl("@variable.builtin", { ctermfg = palette.bright_cyan })
hl("@variable.parameter", { ctermfg = palette.white })
hl("@variable.parameter.builtin", { ctermfg = palette.bright_cyan })
hl("@variable.member", { ctermfg = palette.white })

hl("@constant", { ctermfg = palette.cyan })
hl("@constant.builtin", { ctermfg = palette.cyan })
hl("@constant.macro", { ctermfg = palette.cyan })

hl("@module", { ctermfg = palette.white })
hl("@module.builtin", { ctermfg = palette.cyan })
hl("@label", { ctermfg = palette.bright_blue })

-- Literals
hl("@string", { ctermfg = palette.white })
hl("@string.documentation", { ctermfg = palette.white })
hl("@string.regexp", { ctermfg = palette.cyan })
hl("@string.escape", { ctermfg = palette.cyan })
hl("@string.special", { ctermfg = palette.cyan })
hl("@string.special.symbol", { ctermfg = palette.green })
hl("@string.special.path", { ctermfg = palette.green })
hl("@string.special.url", { ctermfg = palette.cyan })

hl("@character", { ctermfg = palette.green })
hl("@character.special", { ctermfg = palette.green })

hl("@boolean", { ctermfg = palette.magenta })
hl("@number", { ctermfg = palette.magenta })
hl("@number.float", { ctermfg = palette.magenta })

-- Types
hl("@type", { ctermfg = palette.cyan })
hl("@type.builtin", { ctermfg = palette.cyan })
hl("@type.definition", { ctermfg = palette.cyan })

hl("@attribute", { ctermfg = palette.red })
hl("@attribute.builtin", { ctermfg = palette.red })
hl("@property", { ctermfg = palette.white })

-- Functions
hl("@function", { ctermfg = palette.bright_blue })
hl("@function.builtin", { ctermfg = palette.bright_blue })
hl("@function.call", { ctermfg = palette.bright_blue })
hl("@function.macro", { ctermfg = palette.bright_blue })

hl("@function.method", { ctermfg = palette.bright_blue })
hl("@function.method.call", { ctermfg = palette.bright_blue })

hl("@operator", { ctermfg = palette.bright_white })
hl("@constructor", { ctermfg = palette.bright_blue })

-- Keywords
hl("@keyword", { ctermfg = palette.bright_white })
hl("@keyword.coroutine", { ctermfg = palette.bright_white })
hl("@keyword.function", { ctermfg = palette.bright_white })
hl("@keyword.operator", { ctermfg = palette.bright_white })
hl("@keyword.import", { ctermfg = palette.bright_white })
hl("@keyword.type", { ctermfg = palette.bright_white })
hl("@keyword.modifier", { ctermfg = palette.bright_white })
hl("@keyword.repeat", { ctermfg = palette.bright_white })
hl("@keyword.return", { ctermfg = palette.bright_white })
hl("@keyword.debug", { ctermfg = palette.bright_white })
hl("@keyword.exception", { ctermfg = palette.bright_white })

hl("@keyword.conditional", { ctermfg = palette.bright_white })
hl("@keyword.conditional.ternary", { ctermfg = palette.bright_white })

hl("@keyword.directive", { ctermfg = palette.bright_white })
hl("@keyword.directive.define", { ctermfg = palette.bright_white })

-- Punctuation
hl("@punctuation.delimiter", { ctermfg = palette.bright_white })
hl("@punctuation.bracket", { ctermfg = palette.white })
hl("@punctuation.special", { ctermfg = palette.cyan })

-- Comments
hl("@comment", { ctermfg = palette.bright_black })
hl("@comment.documentation", { ctermfg = palette.bright_black })

hl("@comment.error", { ctermfg = palette.bright_red })
hl("@comment.warning", { ctermfg = palette.bright_yellow })
hl("@comment.todo", { ctermfg = palette.bright_white })
hl("@comment.note", { ctermfg = palette.bright_cyan })

-- Markup
hl("@markup.strong", { ctermfg = palette.bright_white, bold = true })
hl("@markup.italic", { ctermfg = palette.white, italic = true })
hl("@markup.strikethrough", { ctermfg = palette.white })
hl("@markup.underline", { ctermfg = palette.cyan, underline = true })

hl("@markup.heading", { ctermfg = palette.bright_white, bold = true })

hl("@markup.quote", { ctermfg = palette.bright_cyan })
hl("@markup.math", { ctermfg = palette.bright_cyan })

hl("@markup.link", { ctermfg = palette.cyan })
hl("@markup.link.lable", { ctermfg = palette.cyan })
hl("@markup.link.url", { ctermfg = palette.cyan })

hl("@markup.raw", { ctermfg = palette.white })
hl("@markup.raw.block", { ctermfg = palette.white })

hl("@markup.list", { ctermfg = palette.bright_cyan })
hl("@markup.list.checked", { ctermfg = palette.bright_cyan })
hl("@markup.list.unchecked", { ctermfg = palette.bright_cyan })

hl("@diff.plus", { ctermfg = palette.green })
hl("@diff.minus", { ctermfg = palette.red })
hl("@diff.delta", { ctermfg = palette.yellow })

hl("@tag", { ctermfg = palette.red })
hl("@tag.builtin", { ctermfg = palette.red })
hl("@tag.attribute", { ctermfg = palette.yellow })
hl("@tag.delimiter", { ctermfg = palette.red })
