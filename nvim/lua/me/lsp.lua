-- Setup lspconfig.
--print("nvim/lua/me/lsp.lua")

--require("nvim-lsp-installer").setup {}
--local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- One for each lsp server enabled 
require'lspconfig'.pyright.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.yamlls.setup{}

-- Powershell lsp server. Download from https://github.com/PowerShell/PowerShellEditorServices/releases and extract to nvim data folder
local pses_path = vim.fn.stdpath "data" .. "/PowerShellEditorServices"
require'lspconfig'.powershell_es.setup{bundle_path = pses_path}

-- Map keys when we open a file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')                -- Displays hover information about the symbol under the cursor
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')          -- Jump to the definition
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')         -- Jump to declaration
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')      -- Lists all the implementations for the symbol under the cursor
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')     -- Jumps to the definition of the type symbol
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')          -- Lists all the references 
    bufmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')   -- Displays a function's signature information
    bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')            -- Renames all references to the symbol under the cursor
    bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')       -- Selects a code action available at the current cursor position
    bufmap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')
    bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')       -- Show diagnostics in a floating window
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')        -- Move to the previous diagnostic
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')        -- Move to the next diagnostic
  end
})

require('luasnip.loaders.from_vscode').lazy_load()

