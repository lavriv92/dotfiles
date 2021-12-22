local workbranch = {}

function workbranch.setup()
  require('lualine').setup({})
  require('bufferline').setup()
  require('nvim-tree').setup({
    view={
      width=30,
      side='left',
      auto_resize=false
    }
  })
end

return workbranch
