return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  background = "hard",
  transparent_background_level = 2,
  italics = true,
  disable_italic_comments = false,

  config = function()
    ---@diagnostic disable: missing-fields
    require("everforest").setup({
      version = false,
      lazy = false,
      priority = 1000,
      background = "hard",
      transparent_background_level = 2,
      italics = true,
      disable_italic_comments = false,
      on_highlights = function(hl, palette)
        hl["@keyword"] = { link = "RedItalic" }
        hl["@keyword.conditional"] = { link = "RedItalic" }
        hl["@keyword.debug"] = { link = "OrangeItalic" }
        hl["@keyword.directive"] = { link = "PurpleItalic" }
        hl["@keyword.directive.define"] = { link = "PurpleItalic" }
        hl["@keyword.exception"] = { link = "RedItalic" }
        hl["@keyword.function"] = { link = "RedItalic" }
        hl["@keyword.import"] = { link = "RedItalic" }
        hl["@keyword.import.go"] = { link = "PurpleItalic" }
        hl["@keyword.import.javascript"] = { link = "PurpleItalic" }
        hl["@keyword.import.typescript"] = { link = "PurpleItalic" }
        hl["@keyword.modifier"] = { link = "OrangeItalic" }
        hl["@keyword.operator"] = { link = "OrangeItalic" }
        hl["@keyword.repeat"] = { link = "RedItalic" }
        hl["@keyword.return"] = { link = "RedItalic" }
        hl["@keyword.storage"] = { link = "OrangeItalic" }

        hl.NormalFloat = { fg = palette.fg, bg = palette.none }
      end,
    })
    require("everforest").load()
  end,
}
