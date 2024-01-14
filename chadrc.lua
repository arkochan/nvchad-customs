---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files

M.ui = {
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "📖 Sessions", "Spc f s", "Telescope prosession" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" }
   }
  }
}
M.plugins  = "custom.plugins"

M.mappings = require "custom.mappings"
return M
