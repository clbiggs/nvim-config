return {
{
  "vhyrro/luarocks.nvim",
  lazy = false,          -- must load before everything else
  priority = 1000,
  config = true,
  opts = { rocks = { "dkjson", "punch" } },
},
{
  "azratul/live-share.nvim",
  dependencies = { "vhyrro/luarocks.nvim" },
  config = function()
    require("live-share").setup({
   --   transport = "punch",
      service   = "nokey@localhost.run", -- built-in SSH tunnel; no account required
      username  = "chris.biggs",
    })
  end,
}
}
