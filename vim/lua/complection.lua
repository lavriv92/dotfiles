local complection = {}

function complection.setup()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  local lspconfig = require('lspconfig')

  local servers = { 'pyright' }
  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      capabilities = capabilities,
    }
  end

  require('lspconfig').pyright.setup{}
  local cmp = require('cmp')

  cmp.setup{
    mapping={
      ['<CR>'] = cmp.mapping.confirm({ select = true })
    },
    sources=cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' }
    })
  }
end

return complection
