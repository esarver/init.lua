-- Set a callback on the LspAttach event to set some options
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
            vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "LSP: Goto Definition" })
        end
    end,
})

-- Show diagnostics on virtual lines when the current line has diagnostics to show.
vim.diagnostic.config({ virtual_lines = { current_line = true } })

-- Enable LSPs
vim.lsp.enable({
    "clangd",         -- C/C++
    "cmake",          -- CMake
    "denols",         -- Server-Side TS running on Deno
    "jsonls",         -- JSON
    "just",           -- Justfile
    "lua_ls",         -- Lua
    "markdown_oxide", -- Markdown and PKMS
    "nixd",           -- Nix
    "pyright",        --Python
    "rust_analyzer",  -- Rust
    "taplo",          -- TOML (rust)
    "tinymist",       -- Typst
    "ts_ls",          -- Typescript (node or browser)
    "typos_lsp",      -- Spell checker
    "wgsl_analyzer",  -- WGSL
    "yamlls",         -- YAML
})
