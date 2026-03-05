local palette1 = {
  token = "#ff73fd",
  include = "#6699cc",
  type = "#9ccfd8",
  func = "#96cbfe",

  -- string color
  string = "#f6c177",
  constant = "#f6c177",
  number = "#f6c177",
  boolean = "#ebbcba",

  -- purple
  proc = "#c4a7e7",

  -- self
  self = "#eb6f92",

  special = "#16baac",

  operator = "#908caa",
}

-- Green-on-Dark Palette
local palette2 = {
  token    = "#9ece6a",
  include  = "#73daca",
  type     = "#b4f9f8",
  func     = "#4fd6be",

  -- string color 
  string   = "#c3e88d",
  constant = "#95e454",
  number   = "#ffd700",
  boolean  = "#7cfc00",

  -- proc / parameters
  proc     = "#89b482",

  -- self
  self     = "#2ac3de",

  special  = "#1abc9c",

  operator = "#a9b1d6",
}

local palette3 = {
  token = "#39ff14",
  include = "#00ff41",
  type = "#00ff41",
  func = "#39ff14",
  string = "#008f11",
  constant = "#00ff41",
  number = "#00ff41",
  boolean = "#39ff14",
  proc = "#00ff41",
  self = "#39ff14",
  special = "#00ff41",
  operator = "#00ff41",
}

_ = palette1
_ = palette2
_ = palette3

local palette4 = {
  token = "#32ff32",
  include = "#00ee00",
  type = "#99ff99",
  func = "#aaff00",
  string = "#006400",
  constant = "#00ffcc",
  number = "#d1ffbd",
  boolean = "#55ff55",
  proc = "#77ff77",
  self = "#00ff88",
  special = "#20c20e",
  operator = "#445544",
}

local palette5 = {
  token = "#39ff14",
  include = "#00ff41",
  type = "#00ff41",
  func = "#39ff14",
  string = "#008f11",
  constant = "#00ff41",
  number = "#00ff41",
  boolean = "#39ff14",
  proc = "#00ff41",
  self = "#39ff14",
  special = "#00ff41",
  operator = "#00ff41",
}

vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "ovior"

local function set_colors(palette)
  local highlights = {
    Normal = { bg = "None" },
    DiagnosticUnderlineError = { undercurl = true, sp = "NvimLightRed" },
    DiagnosticUnderlineInfo = { undercurl = true, sp = "NvimLightCyan" },
    DiagnosticUnderlineHint = { undercurl = true, sp = palette.proc },
    DiagnosticUnderlineWarn = { undercurl = true, sp = "NvimLightYellow" },

    -- token
    Keyword = { fg = palette.token },
    ["@keyword"] = { link = "Keyword" },
    ["@lsp.type.formatSpecifier"] = { link = "Keyword" },

    -- operators
    Operator = { fg = palette.operator },
    Delimiter = { fg = palette.operator },
    ["@tag.delimiter"] = { link = "Operator" },

    -- include
    Include = { fg = palette.include },
    ["@module"] = { link = "Include" },

    -- string
    String = { fg = palette.string },
    ["@string.special.url"] = { link = "String" },
    Constant = { fg = palette.constant },
    ["@constant.builtin"] = { fg = palette.constant, bold = true },
    Number = { fg = palette.number },
    Boolean = { fg = palette.boolean },

    ["@lsp.typemod.variable.mutable"] = { underline = true },

    -- type
    Type = { fg = palette.type },
    ["@type.builtin"] = { fg = palette.type, bold = true },
    Property = { fg = palette.type },
    ["@property"] = { link = "Property" },
    ["@tag.builtin"] = { fg = palette.type },
    ["Directory"] = { fg = palette.type },
    Special = { fg = palette.type },

    -- function
    Function = { fg = palette.func },
    ["@function.builtin"] = { fg = palette.func, bold = true },

    -- proc
    ["@lsp.type.decorator"] = { fg = palette.proc },
    ["@lsp.typemod.attributeBracket.attribute"] = { fg = palette.proc },
    ["@lsp.type.deriveHelper"] = { fg = palette.proc },
    ["@variable.parameter"] = { fg = palette.proc },
    ["@lsp.type.macro"] = { fg = palette.proc },
    ["@tag.attribute"] = { fg = palette.proc },
    Statement = { fg = palette.proc },

    --
    ["@variable.builtin"] = { fg = palette.self, bold = true },

    -- special
    ["@lsp.type.typeAlias"] = { fg = palette.special },
    ["@lsp.type.lifetime"] = { fg = palette.special },
    ["@tag"] = { fg = palette.special },
  }

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

set_colors(palette4)
