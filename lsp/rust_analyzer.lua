return {
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
}
