return {
  "nvim-cmp",
  opts = function(_, opts)
    table.insert(opts.sources, 1, {
      name = "cmp_tabnine",
      group_index = 1,
      priority = 1,
    })

    opts.formatting.format = LazyVim.inject.args(opts.formatting.format, function(entry, item)
      -- Hide percentage in the menu
      if entry.source.name == "cmp_tabnine" then
        item.menu = ""
      end
    end)
  end,
}
