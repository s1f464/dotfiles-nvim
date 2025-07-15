# dotfiles-nvim

My [Neovim](https://neovim.io/) config.

    NVIM v0.11.3
    Build type: RelWithDebInfo
    LuaJIT 2.1.1748459687

## Installation

    git clone dotfiles-nvim.git
    cd dotfiles-nvim
    git worktree add -b deployment ~/.config/nvim

## Plugins

Install [lazy](https://github.com/folke/lazy.nvim) plugin manager to load
plugins.

    git clone --filter=blob:none --branch=stable https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim

Or `:LazyInstall`.

Included plugins: [lazy-lock.json](lazy-lock.json).
