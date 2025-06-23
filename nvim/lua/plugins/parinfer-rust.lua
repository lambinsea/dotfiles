---@type LazySpec
return {
  "eraserhd/parinfer-rust",
  build = "cargo build --release",
  config = function()
  end,
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call
    -- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    })
  end,
}
