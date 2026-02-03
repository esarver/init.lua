# init.lua

## Required Dependencies

- `fzf` (`pkgs.fzf`) Used for `telescope.nvim`
- `ripgrep` (`pkgs.ripgrep`) Used for `telescope.nvim`
- `gcc` or `clang` (`pkgs.gcc` or `pkgs.clang`) Used for `nvim-treesitter`
- Neovim 0.12.0 or greater (use flake, TBD)

## Optional Dependencies

### LSPs
The following LSPs are fully configured and enabled, but are not required. It is
recommended that you include them in your nix flake development tools for each project.
- `clangd` C/C++
- `cmake` CMake
- `denols` Server-Side TS running on Deno
- `jsonls` JSON
- `just` Justfile
- `lua_ls` Lua
- `markdown_oxide` Markdown and PKMS
- `nil_ls` Nix
- `nixd` Nix
- `pyright` --Python
- `rust_analyzer` Rust
- `taplo` TOML (rust)
- `tinymist` Typst
- `ts_ls` Typescript (node or browser)
- `typos_lsp` Spell checker
- `wgsl_analyzer` WGSL
- `yamlls` YAML
