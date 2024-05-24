# dotfiles-nvim

My [Neovim](https://neovim.io/) config.

    NVIM v0.10.0
    Build type: Release
    LuaJIT 2.1.1713773202

## Installation

    git clone dotfiles-nvim.git
    cd dotfiles-nvim
    git worktree add -b deployment ~/.config/nvim

## Plugins

Clone [lazy](https://github.com/folke/lazy.nvim) plugin manager to load plugins.

    git clone --filter=blob:none --branch=stable https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim

Included plugins: [lazy-lock.json](lazy-lock.json).
