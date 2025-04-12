local function normalize(path)
	return (path)
end

local prevNorm = vim.fs.normalize
vim.fs.normalize = normalize

require("obsidian").setup({
  dir = [[/mnt/c/Users/Xoph-Lap/Documents/Slip\ Box/Slip\ Box]],
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  },
  notes_subdir = [[00\ Slip\ Box/Inbox]],
  daily_notes = {
    folder = [[00\ Slip\ Box/Journal]],
  },
  disable_frontmatter = true
})

vim.keymap.set(
  "n",
  "gf",
  function()
    if require('obsidian').util.cursor_on_markdown_link() then
      return "<cmd>ObsidianFollowLink<CR>"
    else
      return "gf"
    end
  end,
  { noremap = false, expr = true}
)

vim.keymap.set("n", "<leader>op", "<cmd>ObsidianSearch<CR>")
-- vim.fs.normalize = prevNorm
