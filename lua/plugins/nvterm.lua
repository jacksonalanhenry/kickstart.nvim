return
{
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup()

    local mappings = {
      { { 'n', 't' }, '<leader>tt', function() require("nvterm.terminal").toggle('horizontal') end },
      { { 'n', 't' }, '<leader>tv', function() require("nvterm.terminal").toggle('vertical') end },
      { { 'n', 't' }, '<leader>tf', function() require("nvterm.terminal").toggle('float') end },
    }

    local nvterm_opts = { noremap = true, silent = true }

    for _, mapping in ipairs(mappings) do
      vim.keymap.set(mapping[1], mapping[2], mapping[3], nvterm_opts)
    end
  end,
}
