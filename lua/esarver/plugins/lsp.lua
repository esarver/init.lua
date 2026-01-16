return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "j-hui/fidget.nvim",
    },

    config = function()
        require("fidget").setup({})

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(ev)
                local client = vim.lsp.get_client_by_id(ev.data.client_id)
                if client and client:supports_method('textDocument/completion') then
                    vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
                end
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "LSP: Goto Definition" })
            end,
        })

        vim.g.markdown_fenced_languages = {
            "ts=typescript"
        }

        vim.lsp.config("lua_ls", {
            on_init = function(client)
                if client.workspace_folders then
                    local path = client.workspace_folders[1].name
                    if path ~= vim.fn.stdpath('config') and (vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc')) then
                        return
                    end
                end

                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                    runtime = {
                        -- Tell the language server which version of Lua you're using
                        -- (most likely LuaJIT in the case of Neovim)
                        version = 'LuaJIT'
                    },
                    -- Make the server aware of Neovim runtime files
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                            -- Depending on the usage, you might want to add additional paths here.
                            -- "${3rd}/luv/library"
                            -- "${3rd}/busted/library",
                        }
                        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
                        -- library = vim.api.nvim_get_runtime_file("", true)
                    }
                })
            end,
            settings = {
                Lua = {}
            }
        })
        vim.lsp.config("rust_analyzer", {
            server = {
                settings = {
                    ['rust_analyzer'] = {
                        diagnostics = {
                            enable = true,

                        },
                        cargo = {
                            buildScripts = {
                                enable = true,
                            },
                        },
                        procMacro = {
                            enable = true,
                        },
                        checkOnSave = {
                            enable = true,
                            command = 'clippy',
                            features = 'all',
                        },
                    }
                }
            }
        })
        vim.lsp.enable("denols")
        vim.lsp.enable("markdown_oxide")
    end
}
